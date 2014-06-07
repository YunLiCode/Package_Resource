.class final Lcom/speedsoftware/rootexplorer/ak;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Lcom/speedsoftware/rootexplorer/cd;

.field private synthetic c:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ak;->c:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ak;->b:Lcom/speedsoftware/rootexplorer/cd;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/ak;->c:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v3, p1}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-wide v3, v0

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, -0x1

    :cond_2
    return-wide v3

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, ".."

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/ak;->a(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/speedsoftware/rootexplorer/cd;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ak;->b:Lcom/speedsoftware/rootexplorer/cd;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ak;->b:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ak;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/speedsoftware/rootexplorer/ak;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/speedsoftware/rootexplorer/cd;->a(J)V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/ak;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ak;->c:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ak;->c:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->C(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
