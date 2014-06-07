.class final Lcom/speedsoftware/rootexplorer/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/y;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/y;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/y;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/ds;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/y;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;Lcom/speedsoftware/rootexplorer/ds;Landroid/view/View;)V

    return-void
.end method
