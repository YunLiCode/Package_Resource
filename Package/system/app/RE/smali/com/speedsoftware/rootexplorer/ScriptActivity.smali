.class public Lcom/speedsoftware/rootexplorer/ScriptActivity;
.super Landroid/app/Activity;


# static fields
.field private static b:I

.field private static c:Landroid/app/ProgressDialog;


# instance fields
.field final a:Ljava/lang/Runnable;

.field private d:Lcom/speedsoftware/rootexplorer/fc;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->h:Landroid/os/Handler;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->i:Ljava/lang/Thread;

    new-instance v0, Lcom/speedsoftware/rootexplorer/ai;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/ai;-><init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b:I

    return v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/ScriptActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->g:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V
    .locals 3

    const v0, 0x7f030011

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setContentView(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Lcom/speedsoftware/rootexplorer/fc;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    return-object v0
.end method

.method static synthetic f(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->e:Landroid/content/Context;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->a()V

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->f:Ljava/lang/String;

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->c:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ah;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/ah;-><init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    :goto_1
    new-instance v0, Lcom/speedsoftware/rootexplorer/af;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/af;-><init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->e()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "results"

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ScriptActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
