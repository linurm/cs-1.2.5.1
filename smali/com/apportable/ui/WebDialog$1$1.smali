.class Lcom/apportable/ui/WebDialog$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebDialog$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@2
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@4
    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1b

    #@e
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@10
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@12
    # getter for: Lcom/apportable/ui/WebDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$600(Lcom/apportable/ui/WebDialog;)Landroid/widget/ProgressBar;

    #@15
    move-result-object v0

    #@16
    const/16 v1, 0x8

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@1b
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    #@1e
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    #@21
    invoke-virtual {p1}, Landroid/webkit/WebView;->hasFocus()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2a

    #@27
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    #@2a
    :cond_2a
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@3
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@5
    # getter for: Lcom/apportable/ui/WebDialog;->mURLOverrideList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$400(Lcom/apportable/ui/WebDialog;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_64

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_d

    #@1f
    const-string v0, "WebDialog"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v3, "WebView overriding url : "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@39
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@3b
    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    #@3e
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$1$1;->this$1:Lcom/apportable/ui/WebDialog$1;

    #@40
    iget-object v0, v0, Lcom/apportable/ui/WebDialog$1;->this$0:Lcom/apportable/ui/WebDialog;

    #@42
    # invokes: Lcom/apportable/ui/WebDialog;->onOverrideURL(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/apportable/ui/WebDialog;->access$500(Lcom/apportable/ui/WebDialog;Ljava/lang/String;)V

    #@45
    move v0, v1

    #@46
    :goto_46
    if-nez v0, :cond_63

    #@48
    const-string v0, "WebDialog"

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string v3, "WebView loading url : "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@63
    :cond_63
    return v1

    #@64
    :cond_64
    const/4 v0, 0x0

    #@65
    goto :goto_46
.end method
