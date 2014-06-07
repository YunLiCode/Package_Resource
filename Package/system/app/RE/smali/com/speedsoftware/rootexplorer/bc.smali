.class Lcom/speedsoftware/rootexplorer/bc;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method synthetic constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/rootexplorer/bc;-><init>(Lcom/speedsoftware/rootexplorer/i;B)V

    return-void
.end method

.method private constructor <init>(Lcom/speedsoftware/rootexplorer/i;B)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "lost+found"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cd \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_3

    :cond_2
    new-instance v5, Lcom/speedsoftware/rootexplorer/cd;

    sget-boolean v6, Lcom/speedsoftware/rootexplorer/i;->v:Z

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v0, p0, v6, v7}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->C:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " %s.%s \"%s\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_b

    const/16 v0, 0x190

    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit16 v0, v0, 0xc8

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x64

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x28

    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x14

    :cond_3
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_4

    add-int/lit8 v0, v0, 0xa

    :cond_4
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x4

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x2

    :cond_6
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_8

    add-int/lit16 v0, v0, 0xfa0

    :cond_8
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_9

    add-int/lit16 v0, v0, 0x7d0

    :cond_9
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_a

    add-int/lit16 v0, v0, 0x3e8

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%d \"%s\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v4, "\\\""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/cd;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->w:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    const-string v4, "\\\\"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_2

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/speedsoftware/rootexplorer/i;->v:Z

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " -s \"%s\" \"%s\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v3, v2}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v2

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/ct;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/speedsoftware/rootexplorer/bc;->d(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lcom/speedsoftware/rootexplorer/bc;->c(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/speedsoftware/rootexplorer/bc;->d(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Lcom/speedsoftware/rootexplorer/bc;->c(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method private static c(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->y:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \"%s\" > \"%s\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v3, v2}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/bc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->x:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \"%s\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v2, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cd \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/bc;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/speedsoftware/rootexplorer/bc;->b(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "%s%s%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v1

    aput-object p2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->s:Lcom/speedsoftware/rootexplorer/r;

    sget-object v4, Lcom/speedsoftware/rootexplorer/r;->e:Lcom/speedsoftware/rootexplorer/r;

    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \"%s\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, "\\\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v4, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->A:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " -s \"%s\" \"%s\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, "\\\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v5, "\\\""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v2, v0}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v2, v0, Lcom/speedsoftware/rootexplorer/ct;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    const-string v3, ""

    iput-object v3, v2, Lcom/speedsoftware/rootexplorer/i;->T:Ljava/lang/String;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ct;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    move v0, v1

    :goto_2
    return v0

    :cond_2
    const-string v0, "/"

    goto/16 :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, v3, Lcom/speedsoftware/rootexplorer/i;->T:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/speedsoftware/rootexplorer/i;->T:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->s:Lcom/speedsoftware/rootexplorer/r;

    sget-object v4, Lcom/speedsoftware/rootexplorer/r;->a:Lcom/speedsoftware/rootexplorer/r;

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->s:Lcom/speedsoftware/rootexplorer/r;

    sget-object v4, Lcom/speedsoftware/rootexplorer/r;->c:Lcom/speedsoftware/rootexplorer/r;

    if-ne v0, v4, :cond_9

    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/speedsoftware/rootexplorer/bc;->b(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/bc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \"%s\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->g(Lcom/speedsoftware/rootexplorer/i;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dg;->h()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    move v0, v2

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/speedsoftware/rootexplorer/i;->d(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/dg;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dg;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, v4, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/dg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->D:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \"%s\" \"%s%s%s\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v2, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v5, "\\\""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_5
    aput-object v0, v4, v8

    const-string v0, "\\"

    const-string v2, "\\\\"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v5, "\\\""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v2, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    move v0, v1

    goto/16 :goto_2

    :cond_b
    const-string v0, "/"

    goto :goto_5

    :cond_c
    const-string v4, "%s%s%s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    :goto_6
    aput-object v0, v5, v1

    aput-object p2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/rootexplorer/bc;->b(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \"%s\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v2, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    move v0, v1

    goto/16 :goto_2

    :cond_d
    const-string v0, "/"

    goto :goto_6

    :cond_e
    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/bc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \"%s\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    move v0, v2

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bc;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    move v0, v1

    goto/16 :goto_2

    :cond_10
    move v0, v2

    goto/16 :goto_4
.end method
