.class Lcom/apportable/webview/WebViewDialog$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->setLoadWithOverviewMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;Z)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$13;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    iput-boolean p2, p0, Lcom/apportable/webview/WebViewDialog$13;->val$enabled:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$13;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@9
    move-result-object v0

    #@a
    iget-boolean v1, p0, Lcom/apportable/webview/WebViewDialog$13;->val$enabled:Z

    #@c
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    #@f
    return-void
.end method
