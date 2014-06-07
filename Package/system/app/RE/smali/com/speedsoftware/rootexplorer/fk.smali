.class final Lcom/speedsoftware/rootexplorer/fk;
.super Lcom/speedsoftware/rootexplorer/co;


# instance fields
.field private synthetic d:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fk;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/speedsoftware/rootexplorer/co;-><init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->G()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fk;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/speedsoftware/rootexplorer/fg;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fk;->d:Lcom/speedsoftware/rootexplorer/i;

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

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fk;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/fk;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/fk;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/i;->m()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->c:Landroid/widget/TextView;

    const v0, 0x7f09001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->d:Landroid/widget/TextView;

    const v0, 0x7f09001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->h:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/fk;->a(Lcom/speedsoftware/rootexplorer/cd;Lcom/speedsoftware/rootexplorer/fg;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->c:Landroid/widget/TextView;

    const-string v3, "%tY/%tm/%td %tT"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->d:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/fg;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/fg;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
