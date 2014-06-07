.class public final Lcom/speedsoftware/rootexplorer/ct;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/speedsoftware/rootexplorer/fc;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/fc;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ct;->c:Lcom/speedsoftware/rootexplorer/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ct;->b:Ljava/util/ArrayList;

    return-void
.end method
