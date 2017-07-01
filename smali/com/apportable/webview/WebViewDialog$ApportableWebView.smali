.class Lcom/apportable/webview/WebViewDialog$ApportableWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/webview/WebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApportableWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;


# direct methods
.method public constructor <init>(Lcom/apportable/webview/WebViewDialog;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->this$0:Lcom/apportable/webview/WebViewDialog;

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
    if-ne p1, v0, :cond_13

    #@3
    invoke-virtual {p0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->canGoBack()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_11

    #@9
    new-instance v0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$1;

    #@b
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/webview/WebViewDialog$ApportableWebView$1;-><init>(Lcom/apportable/webview/WebViewDialog$ApportableWebView;ILandroid/view/KeyEvent;)V

    #@e
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@11
    :cond_11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    goto :goto_12
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_17

    #@3
    invoke-virtual {p0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->canGoBack()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_e

    #@9
    invoke-virtual {p0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->goBack()V

    #@c
    :goto_c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    new-instance v0, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;

    #@10
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/webview/WebViewDialog$ApportableWebView$2;-><init>(Lcom/apportable/webview/WebViewDialog$ApportableWebView;ILandroid/view/KeyEvent;)V

    #@13
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@16
    goto :goto_c

    #@17
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@1a
    move-result v0

    #@1b
    goto :goto_d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    #@3
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    #@a
    return-void
.end method
