.class public final Lcom/speedsoftware/rootexplorer/em;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/em;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/speedsoftware/rootexplorer/ds;

    check-cast p2, Lcom/speedsoftware/rootexplorer/ds;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/ds;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/speedsoftware/rootexplorer/ds;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
