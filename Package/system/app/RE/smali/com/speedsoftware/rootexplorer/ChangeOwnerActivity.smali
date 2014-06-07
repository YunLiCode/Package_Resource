.class public Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Landroid/widget/Spinner;

.field private static b:Landroid/widget/Spinner;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a:Landroid/widget/Spinner;

    sput-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->b:Landroid/widget/Spinner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/widget/Spinner;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b()Landroid/widget/Spinner;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 7

    const/4 v5, 0x0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const-string v3, "root"

    invoke-direct {v0, v5, v3}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3e8

    const-string v4, "system"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3e9

    const-string v4, "radio"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ea

    const-string v4, "bluetooth"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3eb

    const-string v4, "graphics"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ec

    const-string v4, "input"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ed

    const-string v4, "audio"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ee

    const-string v4, "camera"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3ef

    const-string v4, "log"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f0

    const-string v4, "compass"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f1

    const-string v4, "mount"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f2

    const-string v4, "wifi"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f3

    const-string v4, "adb"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f4

    const-string v4, "install"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f5

    const-string v4, "media"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f6

    const-string v4, "dhcp"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f7

    const-string v4, "sdcard_rw"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f8

    const-string v4, "vpn"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x3f9

    const-string v4, "keystore"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d0

    const-string v4, "shell"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d1

    const-string v4, "cache"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x7d2

    const-string v4, "diag"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbb9

    const-string v4, "net_bt_admin"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbba

    const-string v4, "net_bt"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbb

    const-string v4, "inet"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbc

    const-string v4, "net_raw"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0xbbd

    const-string v4, "net_admin"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x270e

    const-string v4, "misc"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/cm;

    const/16 v3, 0x270f

    const-string v4, "nobody"

    invoke-direct {v0, v3, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    add-int/lit16 v5, v5, -0x2710

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/speedsoftware/rootexplorer/cm;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v5, v6, v4}, Lcom/speedsoftware/rootexplorer/cm;-><init>(ILjava/lang/String;)V

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "iconid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->d:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const-string v0, "owner"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "group"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/an;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/an;-><init>(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ao;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/ao;-><init>(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cm;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cm;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v3, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    move v3, v4

    :cond_2
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    move v2, v4

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
