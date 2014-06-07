.class public final Lcom/speedsoftware/rootexplorer/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private synthetic d:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/e;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/speedsoftware/rootexplorer/e;->c:Z

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.speedsoftware.rootexplorer_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folders_first"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/e;->a:Z

    invoke-virtual {p1, v0}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/content/SharedPreferences;)V

    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "name_asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "date_asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iput v3, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "size_asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput v4, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "type_asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "name_desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iput v2, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/e;->c:Z

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/speedsoftware/rootexplorer/i;->h:Ljava/lang/String;

    const-string v1, "date_desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iput v3, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/e;->c:Z

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/e;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/speedsoftware/rootexplorer/cd;

    check-cast p2, Lcom/speedsoftware/rootexplorer/cd;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/speedsoftware/rootexplorer/e;->a:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/speedsoftware/rootexplorer/e;->b:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/e;->c:Z

    if-eqz v0, :cond_8

    mul-int/lit8 v0, v1, -0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v3

    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    move v1, v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
