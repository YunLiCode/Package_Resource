.class public final Lcom/speedsoftware/rootexplorer/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:[Landroid/graphics/Bitmap;

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x12

    new-array v0, v1, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    new-array v0, v1, [I

    sput-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/4 v1, 0x7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0x9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xa

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020009

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xb

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020008

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xc

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f020000

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xd

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020022

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xe

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0xf

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020021

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0x10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->a:[Landroid/graphics/Bitmap;

    const/16 v1, 0x11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const v1, 0x7f020001

    aput v1, v0, v4

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const v1, 0x7f020007

    aput v1, v0, v5

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const v1, 0x7f02000c

    aput v1, v0, v6

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const v1, 0x7f02000d

    aput v1, v0, v7

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const v1, 0x7f02000e

    aput v1, v0, v8

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/4 v1, 0x5

    const v2, 0x7f02001a

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/4 v1, 0x6

    const v2, 0x7f02001b

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/4 v1, 0x7

    const v2, 0x7f02001e

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0x8

    const v2, 0x7f02001f

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0x9

    const v2, 0x7f020020

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xa

    const v2, 0x7f020009

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xb

    const v2, 0x7f020008

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xc

    const/high16 v2, 0x7f020000

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xd

    const v2, 0x7f020022

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xe

    const v2, 0x7f02001c

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0xf

    const v2, 0x7f020021

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0x10

    const v2, 0x7f02000a

    aput v2, v0, v1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    const/16 v1, 0x11

    const v2, 0x7f02001d

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public static b(I)I
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/ae;->b:[I

    aget v0, v0, p0

    return v0
.end method
