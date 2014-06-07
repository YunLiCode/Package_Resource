.class final Lcom/speedsoftware/rootexplorer/fm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/CreateArchive;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fm;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fm;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fm;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
