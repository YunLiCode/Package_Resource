.class final Lcom/speedsoftware/rootexplorer/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ViewTable;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ViewTable;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/av;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/av;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ViewTable;->finish()V

    return-void
.end method
