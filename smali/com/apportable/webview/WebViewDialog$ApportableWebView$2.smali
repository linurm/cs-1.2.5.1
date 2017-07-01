.class Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$ApportableWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/webview/WebViewDialog$ApportableWebView;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$ApportableWebView;ILandroid/view/KeyEvent;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->this$1:Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@2
    iput p2, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$keyCode:I

    #@4
    iput-object p3, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$event:Landroid/view/KeyEvent;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    iget v1, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$keyCode:I

    #@2
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$event:Landroid/view/KeyEvent;

    #@4
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1b

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$event:Landroid/view/KeyEvent;

    #@d
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    #@10
    move-result-wide v2

    #@11
    iget-object v4, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;->val$event:Landroid/view/KeyEvent;

    #@13
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getDeviceId()I

    #@16
    move-result v4

    #@17
    # invokes: Lcom/apportable/webview/WebViewDialog;->nativeKeyUp(IIJI)Z
    invoke-static {v1, v0, v2, v3, v4}, Lcom/apportable/webview/WebViewDialog;->access$100(IIJI)Z

    #@1a
    return-void

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    goto :goto_b
.end method
