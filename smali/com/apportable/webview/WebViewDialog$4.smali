.class Lcom/apportable/webview/WebViewDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->evaluateJavascriptString(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;

.field final synthetic val$javascript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$4;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    iput-object p2, p0, Lcom/apportable/webview/WebViewDialog$4;->val$javascript:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$4;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "javascript:"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$4;->val$javascript:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->loadUrl(Ljava/lang/String;)V

    #@1e
    return-void
.end method
