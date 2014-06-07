.class final Lcom/speedsoftware/rootexplorer/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DisplayText;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DisplayText;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cb;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cb;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DisplayText;->a(Lcom/speedsoftware/rootexplorer/DisplayText;)V

    return-void
.end method
