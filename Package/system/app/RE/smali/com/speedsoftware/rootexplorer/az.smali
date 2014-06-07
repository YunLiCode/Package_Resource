.class final Lcom/speedsoftware/rootexplorer/az;
.super Lcom/speedsoftware/rootexplorer/cd;


# instance fields
.field private e:Ljava/lang/String;

.field private synthetic f:Lcom/speedsoftware/rootexplorer/BookmarkList;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/BookmarkList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/az;->f:Lcom/speedsoftware/rootexplorer/BookmarkList;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V

    invoke-virtual {p0, p2}, Lcom/speedsoftware/rootexplorer/az;->a(I)V

    return-void
.end method

.method constructor <init>(Lcom/speedsoftware/rootexplorer/BookmarkList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/az;->f:Lcom/speedsoftware/rootexplorer/BookmarkList;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/az;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/az;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/az;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/az;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/az;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
