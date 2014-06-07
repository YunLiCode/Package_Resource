.class public final Lcom/speedsoftware/rootexplorer/dg;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/Hashtable;)V
    .locals 7

    const/16 v6, 0x20

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/dg;->f:Z

    iput v5, p0, Lcom/speedsoftware/rootexplorer/dg;->g:I

    iput v5, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    iput v5, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/dg;->f:Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_5

    packed-switch v1, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    const-string v0, "G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    :goto_0
    return v0

    :cond_0
    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_1
    const-string v0, "K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/speedsoftware/rootexplorer/dw;Ljava/util/Hashtable;)I
    .locals 2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/dg;->f:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/speedsoftware/rootexplorer/dw;->b(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/dg;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/dg;->f:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    throw v0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/16 v4, 0x400

    const/4 v1, -0x1

    const-wide/high16 v7, 0x4090000000000000L

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_8

    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08011a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f08011b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_3

    const-string v0, "%.2fGB"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    int-to-double v2, v2

    div-double/2addr v2, v7

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    const/high16 v2, 0x100000

    if-lt v1, v2, :cond_5

    const-string v1, "%.2fGB"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    int-to-double v3, v3

    div-double/2addr v3, v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "%s %s, %s %s, %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v0, 0x7f08000c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const v1, 0x7f08000d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u53ea/\u8bfb"

    :goto_3
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    if-lt v0, v4, :cond_4

    const-string v0, "%.2fMB"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    int-to-double v2, v2

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "%dK"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    if-lt v1, v4, :cond_6

    const-string v1, "%.2fMB"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, "%dK"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const-string v0, "\u8bfb/\u5199"

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "(\u53ea/\u8bfb)"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "(\u8bfb/\u5199)"

    goto :goto_4
.end method

.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/dg;->g:I

    iput p2, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    iput p3, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dg;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;ZZLandroid/content/Context;)V
    .locals 8

    const/16 v7, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    or-int v2, p2, p3

    if-eqz v2, :cond_5

    move-object v2, v0

    move v3, v1

    move v4, v1

    move-object v1, v0

    :goto_0
    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_1

    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/dg;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/speedsoftware/rootexplorer/dg;->g:I

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/dg;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/dg;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    :goto_2
    return-void

    :cond_1
    const/16 v5, 0x20

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    :goto_3
    packed-switch v4, :pswitch_data_0

    :goto_4
    add-int/lit8 v3, v5, 0x1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iput v6, p0, Lcom/speedsoftware/rootexplorer/dg;->g:I

    iput v6, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    iput v6, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    goto :goto_2

    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->a:Ljava/lang/String;

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "K "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0800c5

    invoke-virtual {p4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v0, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "K "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f08000c

    invoke-virtual {p4, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "K "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f0800c6

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->e:Ljava/lang/String;

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rw"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " -o %s,remount %s %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/dg;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ro"

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->g:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->h:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/dg;->i:I

    return v0
.end method
