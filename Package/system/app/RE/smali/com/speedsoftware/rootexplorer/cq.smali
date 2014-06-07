.class final Lcom/speedsoftware/rootexplorer/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/speedsoftware/rootexplorer/dg;

.field private b:I

.field private c:I

.field private d:I

.field private synthetic e:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/dg;III)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cq;->e:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cq;->a:Lcom/speedsoftware/rootexplorer/dg;

    iput p3, p0, Lcom/speedsoftware/rootexplorer/cq;->b:I

    iput p4, p0, Lcom/speedsoftware/rootexplorer/cq;->c:I

    iput p5, p0, Lcom/speedsoftware/rootexplorer/cq;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cq;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cq;->a:Lcom/speedsoftware/rootexplorer/dg;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/cq;->b:I

    iget v3, p0, Lcom/speedsoftware/rootexplorer/cq;->c:I

    iget v4, p0, Lcom/speedsoftware/rootexplorer/cq;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/dg;III)V

    return-void
.end method
