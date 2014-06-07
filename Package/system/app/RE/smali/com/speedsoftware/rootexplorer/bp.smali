.class final Lcom/speedsoftware/rootexplorer/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/speedsoftware/rootexplorer/cc;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/cc;-><init>(Lcom/speedsoftware/rootexplorer/bp;)V

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cc;->start()V

    return-void
.end method
