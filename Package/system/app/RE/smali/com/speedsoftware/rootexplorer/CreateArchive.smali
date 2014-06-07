.class public Lcom/speedsoftware/rootexplorer/CreateArchive;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/speedsoftware/rootexplorer/fc;

.field private e:Lcom/speedsoftware/rootexplorer/q;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ProgressBar;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/speedsoftware/rootexplorer/ce;

.field private s:Landroid/content/Context;

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;

.field private v:Ljava/lang/Runnable;

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->b:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->c:Z

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->i:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->j:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->k:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->l:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->m:Landroid/widget/ProgressBar;

    iput v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->n:I

    iput v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->o:I

    iput-boolean v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->p:Z

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fl;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fl;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fm;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fm;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fo;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fo;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->v:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fp;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fp;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fh;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fh;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->x:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fi;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fi;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->y:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/fj;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/fj;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->o:I

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/CreateArchive;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/CreateArchive;)I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->n:I

    return v0
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/CreateArchive;I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->n:I

    return-void
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/CreateArchive;)I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->o:I

    return v0
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/CreateArchive;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/q;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    return-object v0
.end method

.method static synthetic l(Lcom/speedsoftware/rootexplorer/CreateArchive;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->c:Z

    return v0
.end method

.method static synthetic m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic p(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->u:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic q(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/fc;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    return-object v0
.end method

.method static synthetic r(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/ce;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    return-object v0
.end method

.method static synthetic s(Lcom/speedsoftware/rootexplorer/CreateArchive;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->p:Z

    return-void
.end method

.method static synthetic t(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic u(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->y:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic v(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic w(Lcom/speedsoftware/rootexplorer/CreateArchive;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic x(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->s:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "com.speedsoftware.rootexplorer_preferences"

    invoke-virtual {p0, v0, p1}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f080021

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->s:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->requestWindowFeature(I)Z

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setContentView(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->a()V

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->i:Landroid/widget/TextView;

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->j:Landroid/widget/TextView;

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->k:Landroid/widget/TextView;

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->l:Landroid/widget/ProgressBar;

    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->m:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zip_destination_folder"

    invoke-static {}, Lcom/speedsoftware/rootexplorer/Preferences;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->q:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/ce;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    sget-object v4, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v3, v4, :cond_5

    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-nez v1, :cond_7

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    new-instance v1, Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/speedsoftware/rootexplorer/q;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/q;->start()V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    return-void

    :cond_3
    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/ce;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/ce;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    iput-object v3, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->r:Lcom/speedsoftware/rootexplorer/ce;

    sget-object v4, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/ce;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/CreateArchive;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_7
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "zip_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/speedsoftware/rootexplorer/q;

    invoke-direct {v2, p0, v0, v1}, Lcom/speedsoftware/rootexplorer/q;-><init>(Lcom/speedsoftware/rootexplorer/CreateArchive;[Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/q;->start()V
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/q;->isAlive()Z

    move-result v1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/rootexplorer/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/q;->a()V

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fc;->e()V

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->d:Lcom/speedsoftware/rootexplorer/fc;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/q;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/rootexplorer/q;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->e:Lcom/speedsoftware/rootexplorer/q;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/q;->a()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0800b3

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/CreateArchive;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/CreateArchive;->a:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
