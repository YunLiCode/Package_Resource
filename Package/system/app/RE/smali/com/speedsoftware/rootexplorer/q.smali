.class final Lcom/speedsoftware/rootexplorer/q;
.super Ljava/lang/Thread;


# instance fields
.field private a:[Lcom/speedsoftware/rootexplorer/cd;

.field private b:Lcom/speedsoftware/rootexplorer/cd;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private synthetic f:Lcom/speedsoftware/rootexplorer/CreateArchive;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/CreateArchive;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "zip.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/speedsoftware/rootexplorer/CreateArchive;[Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "zip.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "lost+found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cd \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

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

    if-ne v5, v6, :cond_5

    :cond_2
    new-instance v5, Lcom/speedsoftware/rootexplorer/cd;

    sget-boolean v6, Lcom/speedsoftware/rootexplorer/i;->v:Z

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v7}, Lcom/speedsoftware/rootexplorer/CreateArchive;->x(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v0, p1, v6, v7}, Lcom/speedsoftware/rootexplorer/cd;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {v5}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cd "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    const-string v9, "\\\\"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\""

    const-string v9, "\\\""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    const-string v6, "pwd"

    invoke-virtual {v0, v6}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v6, v0, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "d"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private a(Lcom/speedsoftware/b/c;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->w(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    new-instance v1, Lcom/speedsoftware/b/g;

    invoke-direct {v1, p3}, Lcom/speedsoftware/b/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/b/g;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/b/g;->a(Ljava/util/Date;)V

    invoke-virtual {v1}, Lcom/speedsoftware/b/g;->b()Lcom/speedsoftware/b/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->L()I

    move-result v2

    iput v2, v0, Lcom/speedsoftware/b/i;->b:I

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/b/g;->a(J)V

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/speedsoftware/b/h;->a(Lcom/speedsoftware/b/g;)V

    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/b/h;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cat \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" > \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/b/g;->a(J)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

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

    const-string v3, "\" > \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a(Lcom/speedsoftware/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 7

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p2}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/speedsoftware/b/g;

    invoke-direct {v1, v0}, Lcom/speedsoftware/b/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/speedsoftware/b/g;->a(Ljava/util/Date;)V

    invoke-virtual {v1}, Lcom/speedsoftware/b/g;->b()Lcom/speedsoftware/b/i;

    move-result-object v0

    iput p5, v0, Lcom/speedsoftware/b/i;->b:I

    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/speedsoftware/b/h;->a(Lcom/speedsoftware/b/g;)V

    invoke-virtual {p1}, Lcom/speedsoftware/b/c;->c()Lcom/speedsoftware/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/b/h;->b()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "/"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->L()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    goto :goto_1

    :cond_5
    const-string v1, "/"

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v0, v3}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/b/c;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/speedsoftware/rootexplorer/cd;Z)V
    .locals 8

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->s(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, ".tar.gz"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/speedsoftware/rootexplorer/q;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    const-string v0, ".tar.gz"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->t(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->u(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v4, 0x7f0800a0

    invoke-virtual {v1, v4}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/q;->b()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_3
    new-instance v1, Lcom/speedsoftware/b/c;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/speedsoftware/b/c;-><init>(Ljava/io/OutputStream;B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, ""

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->L()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Lcom/speedsoftware/b/c;->a()V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_5
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    const-string v0, ".tar"

    goto/16 :goto_1

    :cond_3
    :try_start_3
    const-string v0, ".tar"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_6
    :try_start_4
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v7, "\\\""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_8
    :try_start_6
    invoke-virtual {v3}, Lcom/speedsoftware/b/c;->a()V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_9
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_3

    :cond_6
    move-object v1, v3

    goto/16 :goto_4
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x3e8

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->p(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_3
    throw v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private a(Ljava/util/zip/ZipOutputStream;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->w(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cat \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" > \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

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

    const-string v3, "\" > \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->c(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p2}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "/"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    :cond_4
    const-string v1, "/"

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/util/zip/ZipOutputStream;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a([Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->s(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    array-length v5, p1

    move v2, v3

    move v0, v3

    :goto_0
    if-lt v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v7, 0x7f0800b1

    invoke-virtual {v6, v7}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->t(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->u(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v5, 0x7f0800a0

    invoke-virtual {v2, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/q;->b()V

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    array-length v5, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v3

    :goto_1
    if-lt v1, v5, :cond_4

    :cond_0
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_3
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/speedsoftware/rootexplorer/q;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    int-to-long v7, v0

    invoke-virtual {v6}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v9

    add-long v6, v7, v9

    long-to-int v0, v6

    goto :goto_4

    :cond_4
    :try_start_4
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v2, v0, v6, v3}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    :goto_6
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/util/zip/ZipOutputStream;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_7
    :try_start_5
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, "\\\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_9
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_a
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_3
    move-exception v2

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_7

    :cond_8
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private a([Lcom/speedsoftware/rootexplorer/cd;Z)V
    .locals 12

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->s(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, ".tar.gz"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    array-length v5, p1

    move v1, v3

    move v4, v3

    :goto_1
    if-lt v1, v5, :cond_3

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v6, 0x7f0800b1

    invoke-virtual {v5, v6}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_5

    const-string v0, ".tar.gz"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0, v4}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->t(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->u(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v4, 0x7f0800a0

    invoke-virtual {v1, v4}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/q;->b()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_3
    new-instance v1, Lcom/speedsoftware/b/c;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/speedsoftware/b/c;-><init>(Ljava/io/OutputStream;B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v8, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v3

    :goto_4
    if-lt v6, v8, :cond_6

    :cond_0
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/speedsoftware/b/c;->a()V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_6
    return-void

    :cond_2
    const-string v0, ".tar"

    goto/16 :goto_0

    :cond_3
    :try_start_3
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/q;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    :goto_7
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_4
    int-to-long v8, v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v0, v8

    goto :goto_7

    :cond_5
    const-string v0, ".tar"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    :cond_6
    :try_start_4
    aget-object v0, p1, v6

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->L()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V

    :goto_9
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/b/c;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    :goto_a
    :try_start_5
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_b
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_c
    :try_start_7
    invoke-virtual {v2}, Lcom/speedsoftware/b/c;->a()V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :goto_d
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v2

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    :cond_a
    move-object v0, v1

    goto/16 :goto_3

    :cond_b
    move-object v1, v2

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iget-boolean v3, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/q;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    int-to-long v4, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v4

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    :cond_3
    int-to-long v3, v1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private b()V
    .locals 4

    const v3, 0x7f0800b0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->p(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_5

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->s(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->r()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v4}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    :try_start_1
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/speedsoftware/rootexplorer/q;->b(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v7, 0x7f0800b1

    invoke-virtual {v6, v7}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v1

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v1

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->t(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v1

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->u(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const v6, 0x7f0800a0

    invoke-virtual {v5, v6}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->b(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v1

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/q;->b()V

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x8

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    const-string v2, ""

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->f()Ljava/util/Date;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/speedsoftware/rootexplorer/q;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setResult(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Z)V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_5
    return-void

    :cond_2
    const-wide/16 v0, 0x64

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    :try_start_7
    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_8
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, "\\\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_8
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_4
    :goto_9
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_2
    move-exception v0

    :try_start_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error_msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setResult(ILandroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->e:Ljava/lang/String;

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_a
    :try_start_e
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Z)V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->finish()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_5
    :try_start_f
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/rootexplorer/cd;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_10
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->a(Lcom/speedsoftware/rootexplorer/CreateArchive;Z)V

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/q;->c:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->finish()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    :cond_6
    :goto_b
    throw v0

    :cond_7
    :try_start_11
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->b:Lcom/speedsoftware/rootexplorer/cd;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/rootexplorer/cd;Z)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/q;->a([Lcom/speedsoftware/rootexplorer/cd;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/q;->a([Lcom/speedsoftware/rootexplorer/cd;Z)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->a:[Lcom/speedsoftware/rootexplorer/cd;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/q;->a([Lcom/speedsoftware/rootexplorer/cd;Z)V

    goto/16 :goto_3

    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v2, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v2, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    const-string v2, "zip_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/q;->f:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;

    move-result-object v0

    sget-object v2, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v0, v2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/q;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".tar.gz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto/16 :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_a

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_9
    move-exception v2

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_6

    :cond_e
    move-object v1, v2

    goto/16 :goto_2
.end method
