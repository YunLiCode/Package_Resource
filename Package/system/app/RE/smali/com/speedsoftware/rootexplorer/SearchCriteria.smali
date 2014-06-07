.class public Lcom/speedsoftware/rootexplorer/SearchCriteria;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->requestWindowFeature(I)Z

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->setContentView(I)V

    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/n;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/n;-><init>(Lcom/speedsoftware/rootexplorer/SearchCriteria;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/m;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/m;-><init>(Lcom/speedsoftware/rootexplorer/SearchCriteria;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
