.class public final Lcom/speedsoftware/rootexplorer/au;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private synthetic g:Lcom/speedsoftware/rootexplorer/fs;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/fs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v5, -0x1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/au;->g:Lcom/speedsoftware/rootexplorer/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/au;->c:Z

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/au;->a:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/au;->f:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v4, "unique"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v5, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/au;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/au;->a:Ljava/lang/String;

    const-string v1, "(^(\\\"|`|\'|\\[))|((\\\"|`|\'|\\])$)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/au;->a:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/au;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v2, "not null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_2

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/speedsoftware/rootexplorer/au;->c:Z

    const-string v2, "primary key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/speedsoftware/rootexplorer/au;->d:Z

    const-string v2, "autoincrement"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/au;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/au;->a:Ljava/lang/String;

    return-object v0
.end method
