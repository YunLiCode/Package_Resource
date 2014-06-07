.class final Lcom/speedsoftware/rootexplorer/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/32 v7, 0x2ce7b9bf

    const-wide/16 v5, 0x6978

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/speedsoftware/rootexplorer/fc;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/speedsoftware/rootexplorer/fc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->f(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_8

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->a()V

    move v0, v1

    :cond_0
    :goto_0
    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/fc;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/i;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/xbin/busybox"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->f(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->f(Lcom/speedsoftware/rootexplorer/i;)V

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->F()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/i;->v()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/speedsoftware/rootexplorer/i;->o:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->b(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->g(Lcom/speedsoftware/rootexplorer/i;)V

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->b(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    const-string v5, "get_content_path"

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v6, v6, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->W:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, v4, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/cd;Landroid/content/Context;)V

    :goto_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->i(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->j(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->j(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->c(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->k(Lcom/speedsoftware/rootexplorer/i;)V

    :cond_5
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-boolean v0, v0, Lcom/speedsoftware/rootexplorer/i;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, v2}, Lcom/speedsoftware/rootexplorer/i;->a(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-boolean v1, v0, Lcom/speedsoftware/rootexplorer/i;->g:Z

    :cond_6
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->l(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_5
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->m(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->n(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->o(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_1
    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->b(I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "current_version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_7

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_6
    return-void

    :cond_8
    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->b(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    sget-object v3, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/bin/busybox"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;)V

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, v4, Lcom/speedsoftware/rootexplorer/i;->W:Ljava/util/Stack;

    new-instance v5, Lcom/speedsoftware/rootexplorer/cz;

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v1, v8}, Lcom/speedsoftware/rootexplorer/cz;-><init>(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v3, "\u641c\u7d22"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_8
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->h(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cz;

    move-result-object v3

    if-eqz v3, :cond_f

    move v3, v2

    :goto_9
    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->h(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cz;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/cz;)V

    goto/16 :goto_3

    :cond_e
    move v0, v1

    goto :goto_8

    :cond_f
    move v3, v1

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bk;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_12
    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->b(Z)V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_5
.end method
