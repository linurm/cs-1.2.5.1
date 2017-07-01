.class Lcom/apportable/webview/WebViewDialog$1$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/webview/WebViewDialog$1;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog$1;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$1$3$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/webview/WebViewDialog$1$3$1;-><init>(Lcom/apportable/webview/WebViewDialog$1$3;Landroid/webkit/WebView;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$1$3$2;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/apportable/webview/WebViewDialog$1$3$2;-><init>(Lcom/apportable/webview/WebViewDialog$1$3;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$1$3$3;

    #@2
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/apportable/webview/WebViewDialog$1$3$3;-><init>(Lcom/apportable/webview/WebViewDialog$1$3;ILjava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@2
    iget-object v0, v0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@4
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1$3;->this$1:Lcom/apportable/webview/WebViewDialog$1;

    #@6
    iget-object v1, v1, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@8
    iget v1, v1, Lcom/apportable/webview/WebViewDialog;->mObject:I

    #@a
    # invokes: Lcom/apportable/webview/WebViewDialog;->onLink(ILjava/lang/String;)Z
    invoke-static {v0, v1, p2}, Lcom/apportable/webview/WebViewDialog;->access$800(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_15

    #@10
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    :goto_14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    goto :goto_14
.end method
