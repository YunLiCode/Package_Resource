.class public final Lcom/speedsoftware/rootexplorer/ap;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/Integer;

.field private synthetic c:Lcom/speedsoftware/rootexplorer/ThumbnailGrid;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/ThumbnailGrid;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ap;->c:Lcom/speedsoftware/rootexplorer/ThumbnailGrid;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ap;->b:[Ljava/lang/Integer;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ap;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ap;->b:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/16 v2, 0x2d

    const/16 v1, 0x8

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ap;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ap;->b:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0
.end method
