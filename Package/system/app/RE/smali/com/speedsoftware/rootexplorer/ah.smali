.class final Lcom/speedsoftware/rootexplorer/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ScriptActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ah;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ah;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ah;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    const v2, 0x7f0800f1

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ah;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ah;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->finish()V

    return-void
.end method
