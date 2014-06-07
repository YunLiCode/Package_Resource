.class public final Lcom/speedsoftware/rootexplorer/ar;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:[Ljava/lang/String;

.field private h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/speedsoftware/rootexplorer/ar;->a:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/speedsoftware/rootexplorer/ar;->b:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/speedsoftware/rootexplorer/ar;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ar;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/speedsoftware/rootexplorer/ca;Ljava/util/ArrayList;)Lcom/speedsoftware/rootexplorer/fr;
    .locals 10

    const/high16 v9, 0x3000000

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v2

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ar;->g:[Ljava/lang/String;

    aget-object v3, v1, v0

    const/4 v0, 0x0

    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_6

    new-instance v1, Lcom/speedsoftware/rootexplorer/fr;

    invoke-direct {v1, p0, v3, v2}, Lcom/speedsoftware/rootexplorer/fr;-><init>(Lcom/speedsoftware/rootexplorer/ar;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v4

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;)V

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fr;->b(Lcom/speedsoftware/rootexplorer/fr;)I

    move-result v0

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fr;->b(Lcom/speedsoftware/rootexplorer/fr;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    :cond_0
    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/fr;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;Ljava/util/ArrayList;)Lcom/speedsoftware/rootexplorer/fr;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v5

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v6

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/ar;->g:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v0

    const/high16 v8, 0x10000000

    and-int/2addr v8, v6

    if-lez v8, :cond_4

    const/high16 v5, 0x2000000

    and-int/2addr v5, v6

    if-lez v5, :cond_3

    if-nez v0, :cond_2

    const-string v0, "false"

    :goto_2
    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fr;->a(Lcom/speedsoftware/rootexplorer/fr;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v0, "true"

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    and-int/2addr v6, v9

    if-ne v6, v9, :cond_5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ar;->g:[Ljava/lang/String;

    aget-object v0, v0, v5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "resource_id:0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/speedsoftware/rootexplorer/ca;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ca;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ca;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/ca;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ca;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ca;->b(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ca;->a(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/ca;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/FileInputStream;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/speedsoftware/rootexplorer/ca;

    const/16 v3, 0x24

    invoke-direct {v2, p0, v3, p1}, Lcom/speedsoftware/rootexplorer/ca;-><init>(Lcom/speedsoftware/rootexplorer/ar;ILjava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v3

    const v4, 0x80003

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v3

    iput v3, p0, Lcom/speedsoftware/rootexplorer/ar;->d:I

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/ca;->a(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/ca;->a(I)V

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v2

    iput v2, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v3, Lcom/speedsoftware/rootexplorer/ca;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v3, p0, v2, p1}, Lcom/speedsoftware/rootexplorer/ca;-><init>(Lcom/speedsoftware/rootexplorer/ar;ILjava/io/InputStream;)V

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/ar;->f:[I

    move v2, v0

    :goto_2
    iget v4, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    if-lt v2, v4, :cond_2

    new-instance v4, Lcom/speedsoftware/rootexplorer/ca;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ar;->d:I

    add-int/lit8 v2, v2, -0x24

    iget v3, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    invoke-direct {v4, p0, v2, p1}, Lcom/speedsoftware/rootexplorer/ca;-><init>(Lcom/speedsoftware/rootexplorer/ar;ILjava/io/InputStream;)V

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/ar;->g:[Ljava/lang/String;

    move v2, v0

    :goto_3
    iget v3, p0, Lcom/speedsoftware/rootexplorer/ar;->e:I

    if-lt v2, v3, :cond_3

    invoke-static {v4}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;)V

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    invoke-static {v4}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ar;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, Lcom/speedsoftware/rootexplorer/ar;->a(Lcom/speedsoftware/rootexplorer/ca;Ljava/util/ArrayList;)Lcom/speedsoftware/rootexplorer/fr;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/ar;->f:[I

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/ca;->b()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/ca;->c()I

    move-result v5

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/ar;->g:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/speedsoftware/rootexplorer/ca;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ar;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/fr;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
