.class Lcom/apportable/ui/WebDialog$ApportableWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApportableWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebDialog;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/WebDialog;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    #@2
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_f

    #@3
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    #@5
    # invokes: Lcom/apportable/ui/WebDialog;->_dismiss()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$000(Lcom/apportable/ui/WebDialog;)V

    #@8
    iget-object v0, p0, Lcom/apportable/ui/WebDialog$ApportableWebView;->this$0:Lcom/apportable/ui/WebDialog;

    #@a
    # invokes: Lcom/apportable/ui/WebDialog;->onClose()V
    invoke-static {v0}, Lcom/apportable/ui/WebDialog;->access$100(Lcom/apportable/ui/WebDialog;)V

    #@d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@12
    move-result v0

    #@13
    goto :goto_e
.end method
