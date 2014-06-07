.class public Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;
.super Landroid/app/Activity;


# static fields
.field private static a:Landroid/widget/CheckBox;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->a:Landroid/widget/CheckBox;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->g:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V
    .locals 3

    const-string v0, "com.speedsoftware.rootexplorer_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sql_dont_ask"

    sget-object v2, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->g:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V
    .locals 3

    :try_start_0
    const-string v0, "market://search?q=pname:com.speedsoftware.sqleditor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->b:Landroid/content/Context;

    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->requestWindowFeature(I)Z

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->setContentView(I)V

    iput-object p0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->b:Landroid/content/Context;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->g:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "make_writeable_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restore_permissions_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->f:Ljava/lang/String;

    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/bh;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/bh;-><init>(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/bg;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/bg;-><init>(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/speedsoftware/rootexplorer/bf;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/bf;-><init>(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
