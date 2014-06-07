.class abstract Lcom/speedsoftware/rootexplorer/co;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Landroid/view/View$OnLongClickListener;

.field public c:Ljava/util/ArrayList;

.field private d:Z

.field private synthetic e:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/co;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/speedsoftware/rootexplorer/co;->d:Z

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->b:Landroid/view/View$OnLongClickListener;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/speedsoftware/rootexplorer/cd;Lcom/speedsoftware/rootexplorer/fg;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->G()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/speedsoftware/rootexplorer/co;->d:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p2, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p1, v2}, Lcom/speedsoftware/rootexplorer/cd;->b(Lcom/speedsoftware/rootexplorer/dw;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->S:Ljava/lang/Runnable;

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->y()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p2, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->D()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->x()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p2, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->D()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/co;->e:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/co;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
