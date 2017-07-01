.class Lcom/apportable/webview/WebViewDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;

.field final synthetic val$baseURL:Ljava/lang/String;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$3;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    iput-object p2, p0, Lcom/apportable/webview/WebViewDialog$3;->val$baseURL:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/apportable/webview/WebViewDialog$3;->val$html:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$3;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$3;->val$baseURL:Ljava/lang/String;

    #@8
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$3;->val$html:Ljava/lang/String;

    #@a
    const-string v3, "text/html"

    #@c
    const-string v4, "uft-8"

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual/range {v0 .. v5}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    return-void
.end method
