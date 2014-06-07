.class public Lcom/speedsoftware/rootexplorer/DataGrid;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:I

.field private D:[Ljava/lang/String;

.field private E:Landroid/view/View$OnLongClickListener;

.field private F:I

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/lang/Runnable;

.field private I:Z

.field private final J:Ljava/lang/Runnable;

.field private final K:Ljava/lang/Runnable;

.field private L:I

.field private M:Z

.field private N:Ljava/lang/Runnable;

.field private O:Z

.field private P:Landroid/view/MotionEvent;

.field private final Q:Ljava/lang/Runnable;

.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/speedsoftware/rootexplorer/di;

.field private d:Landroid/view/GestureDetector;

.field private e:[F

.field private f:[F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/widget/Scroller;

.field private o:Landroid/os/Handler;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x258

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->a:I

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    iput v4, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    iput v4, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->t:I

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->E:Landroid/view/View$OnLongClickListener;

    iput v4, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->F:I

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->G:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->H:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->I:Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/h;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/h;-><init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->J:Ljava/lang/Runnable;

    new-instance v0, Lcom/speedsoftware/rootexplorer/g;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/g;-><init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->K:Ljava/lang/Runnable;

    iput v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->L:I

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->M:Z

    new-instance v0, Lcom/speedsoftware/rootexplorer/f;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/f;-><init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->N:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->O:Z

    iput-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->P:Landroid/view/MotionEvent;

    new-instance v0, Lcom/speedsoftware/rootexplorer/d;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/d;-><init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->Q:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->d:Landroid/view/GestureDetector;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    return-void
.end method

.method private a(F)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const v0, -0x7ffffda8

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/DataGrid;F)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/DataGrid;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/DataGrid;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/DataGrid;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->I:Z

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/DataGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->I:Z

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(F)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    const v3, 0x7f0800b5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    const v4, 0x7f0800b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/speedsoftware/rootexplorer/di;->a(Lcom/speedsoftware/rootexplorer/DataGrid;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->M:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v0, v0

    if-lt v1, v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->C:I

    const/high16 v1, 0x40000000

    if-ne v3, v1, :cond_4

    :goto_2
    int-to-float v0, v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    const/high16 v1, 0x40c00000

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    array-length v1, v1

    if-lt v2, v1, :cond_5

    int-to-float v0, v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->M:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/au;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/au;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    const/high16 v5, 0x41f00000

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v5, v0

    move v1, v2

    move v3, v2

    :goto_4
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v7, v7

    if-ge v3, v7, :cond_3

    invoke-direct {p0, v6}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aget v7, v7, v3

    cmpg-float v7, v7, v6

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aput v6, v7, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->C:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    int-to-float v3, v0

    aput v3, v1, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aget v1, v1, v2

    const/high16 v3, 0x3f800000

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/DataGrid;F)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    return-void
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/DataGrid;)Lcom/speedsoftware/rootexplorer/di;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    return-object v0
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    return-void
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->K:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/speedsoftware/rootexplorer/DataGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->M:Z

    return v0
.end method

.method static synthetic h(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->G:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->H:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic k(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/speedsoftware/rootexplorer/DataGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->O:Z

    return v0
.end method

.method static synthetic m(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->P:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic n(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->P:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iget v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    return-void
.end method

.method public final a(Lcom/speedsoftware/rootexplorer/di;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->H:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->G:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->v:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->v:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->v:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->w:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->w:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->w:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->t:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->y:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->y:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->z:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->z:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->z:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->A:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->A:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->B:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->B:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/speedsoftware/rootexplorer/DataGrid;->setPadding(IIII)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->D:[Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->F:I

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->t:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(F)I

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    sget v1, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(F)I

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->g()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v15, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    sget v4, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    :cond_2
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, v15, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    const v4, 0x7f0800b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x42200000

    const/high16 v5, 0x42c80000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->D:[Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v4, 0x96

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->D:[Ljava/lang/String;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    const/high16 v8, 0x42200000

    int-to-float v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->x:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x32

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(F)I

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    div-float/2addr v3, v4

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v4, v4, v10

    sub-float v17, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    rem-float v18, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingBottom()I

    move-result v4

    add-int v19, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    move/from16 v0, v19

    int-to-float v7, v0

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->A:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v4, v10

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v3, v3

    if-lt v4, v3, :cond_9

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    move/from16 v0, v19

    int-to-float v5, v0

    add-float/2addr v5, v3

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    move/from16 v0, v19

    int-to-float v7, v0

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->y:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    move/from16 v0, v19

    int-to-float v4, v0

    add-float v7, v3, v4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    const/high16 v5, 0x3f800000

    add-float/2addr v4, v5

    sget v5, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v5, v5

    sget v6, Lcom/speedsoftware/rootexplorer/ViewTable;->b:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v11, v12

    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v11, v3, :cond_a

    :cond_6
    move v9, v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v3, v3

    if-lt v9, v3, :cond_11

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    sub-float/2addr v5, v3

    div-float/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->m:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float v6, v4, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->B:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v15, v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    sub-float v3, v15, v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    sub-float/2addr v4, v5

    mul-float v5, v4, v4

    div-float v7, v5, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    sub-float v8, v3, v7

    div-float/2addr v6, v8

    mul-float v8, v4, v7

    div-float v3, v8, v3

    sub-float v3, v4, v3

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v4, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    add-float/2addr v7, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->B:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v5, v5, v10

    sub-float/2addr v3, v5

    sub-float v5, v3, v17

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/di;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/speedsoftware/rootexplorer/au;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/au;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    sub-int v4, v11, v12

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float v3, v3, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    add-float v21, v3, v4

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v21, v3

    if-gez v3, :cond_6

    move-object/from16 v0, p0

    iput v11, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->F:I

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v3, v0

    add-float v5, v21, v3

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v6, v3

    move/from16 v0, v19

    int-to-float v3, v0

    add-float v7, v21, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->y:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    if-ne v11, v3, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    sub-float v3, v21, v3

    const/high16 v5, 0x3f800000

    add-float/2addr v5, v3

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    sub-float v3, v21, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->v:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    move/from16 v0, v19

    int-to-float v3, v0

    add-float v13, v21, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Ljava/lang/String;

    move v14, v10

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v3, v3

    if-lt v14, v3, :cond_d

    :cond_c
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v7, v13

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v3, v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v4, v4, v10

    sub-float/2addr v3, v4

    sub-float v22, v3, v17

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v3, v3

    cmpg-float v3, v22, v3

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    if-ne v11, v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    if-ne v14, v3, :cond_e

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    array-length v4, v4

    if-ne v3, v4, :cond_f

    sget v3, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v3, v3

    sub-float v3, v3, v22

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v22, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    sub-float v5, v21, v5

    const/high16 v6, 0x3f800000

    add-float/2addr v5, v6

    add-float v6, v22, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->l:F

    sub-float v3, v21, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->w:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aget v4, v4, v14

    add-float v4, v4, v22

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/speedsoftware/rootexplorer/ViewTable;->b:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    aget-object v3, v9, v14

    if-nez v3, :cond_10

    const-string v3, ""

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->u:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->e:[F

    aget v3, v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    add-float/2addr v3, v4

    goto :goto_6

    :cond_10
    aget-object v3, v9, v14

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v3, v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    aget v4, v4, v10

    sub-float/2addr v3, v4

    sub-float v3, v3, v17

    sget v4, Lcom/speedsoftware/rootexplorer/ViewTable;->a:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    if-le v9, v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/DataGrid;->y:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_12
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->n:Landroid/widget/Scroller;

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    float-to-int v1, v1

    iget v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    float-to-int v2, v2

    float-to-int v3, p3

    mul-int/lit8 v3, v3, -0x1

    float-to-int v4, p4

    mul-int/lit8 v4, v4, -0x1

    iget v6, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    float-to-int v6, v6

    iget v7, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    float-to-int v8, v7

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(F)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->g:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->f:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    :cond_1
    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->E:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->E:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "x_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    const-string v0, "y_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    const-string v0, "selected_row"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    const-string v0, "selected_column"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "x_pos"

    iget v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "y_pos"

    iget v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "selected_row"

    iget v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->q:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "selected_column"

    iget v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->r:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "super_state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->O:Z

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->p:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->c:Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iput v2, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    :cond_2
    return v3

    :cond_3
    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->j:F

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->h:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    iget v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->k:F

    iput v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->i:F

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->O:Z

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->P:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->Q:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/DataGrid;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/DataGrid;->E:Landroid/view/View$OnLongClickListener;

    return-void
.end method
