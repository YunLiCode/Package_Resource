.class final Lcom/speedsoftware/rootexplorer/ft;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/cr;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/z;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/cr;Lcom/speedsoftware/rootexplorer/z;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ft;->a:Lcom/speedsoftware/rootexplorer/cr;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ft;->b:Lcom/speedsoftware/rootexplorer/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ft;->b:Lcom/speedsoftware/rootexplorer/z;

    invoke-interface {v1, v0}, Lcom/speedsoftware/rootexplorer/z;->a(Lcom/speedsoftware/rootexplorer/cd;)V

    return-void
.end method
