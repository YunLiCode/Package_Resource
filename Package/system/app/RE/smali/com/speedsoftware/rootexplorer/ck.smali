.class final Lcom/speedsoftware/rootexplorer/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ck;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->A()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41eb57b372000000L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->B()V

    :cond_0
    return-void
.end method
