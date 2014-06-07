.class final Lcom/speedsoftware/rootexplorer/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/SearchCriteria;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/SearchCriteria;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/m;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/m;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->setResult(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/m;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->finish()V

    return-void
.end method
