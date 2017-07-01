.class Lcom/apportable/ui/WebView$WebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClient"
.end annotation


# instance fields
.field private mOwner:Lcom/apportable/ui/WebView;

.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView$WebViewClient;->this$0:Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    iput-object p2, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    #@7
    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/WebView$WebViewClient;)Lcom/apportable/ui/WebView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    #@2
    return-object v0
.end method

.method private dispatchEvent(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x13

    #@4
    if-lt v0, v1, :cond_12

    #@6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient;->this$0:Lcom/apportable/ui/WebView;

    #@c
    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    #@f
    move-result-object v1

    #@10
    if-ne v0, v1, :cond_16

    #@12
    :cond_12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    invoke-static {p1}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@19
    goto :goto_15
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    #@0
    const-string v0, "WebView"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "finished "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    #@1f
    move-result v1

    #@20
    iget-object v2, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    #@22
    # getter for: Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/apportable/ui/WebView;->access$400(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x1

    #@27
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2a
    new-instance v2, Lcom/apportable/ui/WebView$WebViewClient$1;

    #@2c
    invoke-direct {v2, p0, v0, v1, p2}, Lcom/apportable/ui/WebView$WebViewClient$1;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;)V

    #@2f
    invoke-direct {p0, v2}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    #@32
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    #@0
    const-string v0, "WebView"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "started "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    new-instance v0, Lcom/apportable/ui/WebView$WebViewClient$2;

    #@1a
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    #@21
    move-result v2

    #@22
    invoke-direct {v0, p0, v1, v2, p2}, Lcom/apportable/ui/WebView$WebViewClient$2;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;)V

    #@25
    invoke-direct {p0, v0}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    #@28
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    #@0
    const-string v0, "WebView"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "error "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    new-instance v0, Lcom/apportable/ui/WebView$WebViewClient$3;

    #@1a
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    #@21
    move-result v3

    #@22
    move-object v1, p0

    #@23
    move-object v4, p4

    #@24
    move v5, p2

    #@25
    move-object v6, p3

    #@26
    invoke-direct/range {v0 .. v6}, Lcom/apportable/ui/WebView$WebViewClient$3;-><init>(Lcom/apportable/ui/WebView$WebViewClient;ZZLjava/lang/String;ILjava/lang/String;)V

    #@29
    invoke-direct {p0, v0}, Lcom/apportable/ui/WebView$WebViewClient;->dispatchEvent(Ljava/lang/Runnable;)V

    #@2c
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    #@0
    const-string v0, "WebView"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "shouldOverrideUrlLoading "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    iget-object v0, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    #@1a
    iget-object v1, p0, Lcom/apportable/ui/WebView$WebViewClient;->mOwner:Lcom/apportable/ui/WebView;

    #@1c
    iget v1, v1, Lcom/apportable/ui/WebView;->mObject:I

    #@1e
    # invokes: Lcom/apportable/ui/WebView;->onLink(ILjava/lang/String;)Z
    invoke-static {v0, v1, p2}, Lcom/apportable/ui/WebView;->access$1300(Lcom/apportable/ui/WebView;ILjava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_29

    #@24
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@27
    const/4 v0, 0x0

    #@28
    :goto_28
    return v0

    #@29
    :cond_29
    const/4 v0, 0x1

    #@2a
    goto :goto_28
.end method
