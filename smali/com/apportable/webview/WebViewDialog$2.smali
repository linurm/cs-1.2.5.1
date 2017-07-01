.class Lcom/apportable/webview/WebViewDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->loadRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$2;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    iput-object p2, p0, Lcom/apportable/webview/WebViewDialog$2;->val$url:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$2;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$2;->val$url:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->loadUrl(Ljava/lang/String;)V

    #@b
    return-void
.end method
