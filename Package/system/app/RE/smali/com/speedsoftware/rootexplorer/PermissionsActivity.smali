.class public Lcom/speedsoftware/rootexplorer/PermissionsActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Landroid/widget/CheckBox;

.field private static b:Landroid/widget/CheckBox;

.field private static c:Landroid/widget/CheckBox;

.field private static d:Landroid/widget/CheckBox;

.field private static e:Landroid/widget/CheckBox;

.field private static f:Landroid/widget/CheckBox;

.field private static g:Landroid/widget/CheckBox;

.field private static h:Landroid/widget/CheckBox;

.field private static i:Landroid/widget/CheckBox;

.field private static j:Landroid/widget/CheckBox;

.field private static k:Landroid/widget/CheckBox;

.field private static l:Landroid/widget/CheckBox;


# instance fields
.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->a:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->b:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->c:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->e:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->f:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->g:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->i:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->j:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->k:Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l:Landroid/widget/CheckBox;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->c:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic g()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->k:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic k()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic l()Landroid/widget/CheckBox;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "iconid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->a:Landroid/widget/CheckBox;

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->b:Landroid/widget/CheckBox;

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->c:Landroid/widget/CheckBox;

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d:Landroid/widget/CheckBox;

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->e:Landroid/widget/CheckBox;

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->g:Landroid/widget/CheckBox;

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h:Landroid/widget/CheckBox;

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->i:Landroid/widget/CheckBox;

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->j:Landroid/widget/CheckBox;

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->k:Landroid/widget/CheckBox;

    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l:Landroid/widget/CheckBox;

    const-string v0, "permissions"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x72

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x73

    if-eq v0, v5, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d:Landroid/widget/CheckBox;

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x72

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->e:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x78

    if-eq v0, v5, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x73

    if-eq v0, v5, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->g:Landroid/widget/CheckBox;

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x72

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h:Landroid/widget/CheckBox;

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x78

    if-eq v0, v5, :cond_8

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x74

    if-eq v0, v5, :cond_8

    move v0, v2

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x53

    if-eq v0, v5, :cond_9

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x73

    if-eq v0, v5, :cond_9

    move v0, v2

    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v4, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x53

    if-eq v0, v5, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x73

    if-eq v0, v5, :cond_a

    move v0, v2

    :goto_a
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v0, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x54

    if-eq v4, v5, :cond_b

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_b

    :goto_b
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ei;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/ei;-><init>(Lcom/speedsoftware/rootexplorer/PermissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ek;

    invoke-direct {v1, p0}, Lcom/speedsoftware/rootexplorer/ek;-><init>(Lcom/speedsoftware/rootexplorer/PermissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v1

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v1

    goto :goto_8

    :cond_9
    move v0, v1

    goto :goto_9

    :cond_a
    move v0, v1

    goto :goto_a

    :cond_b
    move v2, v1

    goto :goto_b
.end method
