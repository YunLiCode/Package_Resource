.class public Lcom/speedsoftware/rootexplorer/OpenWithActivity;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/speedsoftware/rootexplorer/dw;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/os/Handler;

.field private final q:Landroid/widget/AdapterView$OnItemClickListener;

.field private final r:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s:Landroid/widget/AdapterView$OnItemClickListener;

.field private t:Z

.field private final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->p:Landroid/os/Handler;

    new-instance v0, Lcom/speedsoftware/rootexplorer/y;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/y;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->q:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/speedsoftware/rootexplorer/x;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/x;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/speedsoftware/rootexplorer/w;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/w;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->s:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->t:Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/v;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/v;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->u:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;Lcom/speedsoftware/rootexplorer/ds;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ds;->S()V

    const-string v0, "action_data"

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "entry_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "entry_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const v0, 0x7f090002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v2, "remember"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ew;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/speedsoftware/rootexplorer/ew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b()V

    return-void
.end method

.method static synthetic h(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->n:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic k(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;
    .locals 10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const v1, 0x10060

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedsoftware/rootexplorer/em;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/em;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v7

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic l(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->t:Z

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "Help"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->f:Landroid/widget/TextView;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/16 v2, 0x9

    const v3, 0x7f0800ca

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "txt"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/16 v2, 0x8

    const v3, 0x7f0800cb

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "db"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v2, 0x7

    const v3, 0x7f0800cc

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "txt"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v2, 0x3

    const v3, 0x7f0800cd

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apk"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/16 v2, 0xa

    const v3, 0x7f0800ce

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "txt"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v2, 0x4

    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "zip"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v2, 0x5

    const v3, 0x7f0800d0

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tar"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v2, 0x6

    const v3, 0x7f0800d1

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rar"

    invoke-direct {v1, v2, v3, v4}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ew;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/speedsoftware/rootexplorer/ew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    const-string v1, "Generic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/16 v1, 0xb

    const v2, 0x7f0800d2

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v1, 0x0

    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/*"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v1, 0x0

    const v2, 0x7f0800d4

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/*"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v1, 0x0

    const v2, 0x7f0800d5

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/*"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/ds;

    const/4 v1, 0x0

    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/speedsoftware/rootexplorer/ds;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v7, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ew;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->d:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/speedsoftware/rootexplorer/ew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    goto/16 :goto_0

    :cond_3
    const-string v1, "Apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f090004

    const v5, 0x7f090003

    const v4, 0x7f090002

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->k:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->s:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->m:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->n:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->m:Landroid/widget/CheckBox;

    new-instance v1, Lcom/speedsoftware/rootexplorer/u;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/u;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->n:Landroid/widget/CheckBox;

    new-instance v1, Lcom/speedsoftware/rootexplorer/al;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/al;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Lcom/speedsoftware/rootexplorer/am;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/am;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "Internal"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0800c7

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v1, "Generic"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v1, "Apps"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0800c9

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v0, Lcom/speedsoftware/rootexplorer/aj;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/aj;-><init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/aj;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    sput-object p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedsoftware/rootexplorer/dw;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->b:Lcom/speedsoftware/rootexplorer/dw;

    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    return-void
.end method
