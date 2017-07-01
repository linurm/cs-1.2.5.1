.class Lcom/apportable/webview/WebViewDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/webview/WebViewDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/webview/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/apportable/webview/WebViewDialog;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    #@0
    const/high16 v7, 0x1000000

    #@2
    const/16 v6, 0x200

    #@4
    const/16 v5, 0x20

    #@6
    const/4 v4, 0x2

    #@7
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@9
    new-instance v1, Lcom/apportable/webview/WebViewDialog$1$1;

    #@b
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@d
    # getter for: Lcom/apportable/webview/WebViewDialog;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/apportable/webview/WebViewDialog;->access$300(Lcom/apportable/webview/WebViewDialog;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    const v3, 0x1030010

    #@14
    invoke-direct {v1, p0, v2, v3}, Lcom/apportable/webview/WebViewDialog$1$1;-><init>(Lcom/apportable/webview/WebViewDialog$1;Landroid/content/Context;I)V

    #@17
    # setter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/apportable/webview/WebViewDialog;->access$202(Lcom/apportable/webview/WebViewDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    #@1a
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@1c
    new-instance v1, Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@1e
    iget-object v2, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@20
    iget-object v3, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@22
    # getter for: Lcom/apportable/webview/WebViewDialog;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/apportable/webview/WebViewDialog;->access$300(Lcom/apportable/webview/WebViewDialog;)Landroid/content/Context;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v1, v2, v3}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;-><init>(Lcom/apportable/webview/WebViewDialog;Landroid/content/Context;)V

    #@29
    # setter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0, v1}, Lcom/apportable/webview/WebViewDialog;->access$402(Lcom/apportable/webview/WebViewDialog;Lcom/apportable/webview/WebViewDialog$ApportableWebView;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@2c
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@2e
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@35
    move-result-object v0

    #@36
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    #@38
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    #@3b
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@3d
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    #@48
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@4a
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->getSettings()Landroid/webkit/WebSettings;

    #@51
    move-result-object v0

    #@52
    const/4 v1, 0x1

    #@53
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@56
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@58
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@5b
    move-result-object v0

    #@5c
    new-instance v1, Lcom/apportable/webview/WebViewDialog$1$2;

    #@5e
    invoke-direct {v1, p0}, Lcom/apportable/webview/WebViewDialog$1$2;-><init>(Lcom/apportable/webview/WebViewDialog$1;)V

    #@61
    invoke-virtual {v0, v1}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    #@64
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@66
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@69
    move-result-object v0

    #@6a
    new-instance v1, Lcom/apportable/webview/WebViewDialog$1$3;

    #@6c
    invoke-direct {v1, p0}, Lcom/apportable/webview/WebViewDialog$1$3;-><init>(Lcom/apportable/webview/WebViewDialog$1;)V

    #@6f
    invoke-virtual {v0, v1}, Lcom/apportable/webview/WebViewDialog$ApportableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@72
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@74
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@77
    move-result-object v0

    #@78
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@7a
    # getter for: Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@81
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@83
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@8e
    move-result-object v0

    #@8f
    const/16 v1, 0x33

    #@91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@93
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@95
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@98
    move-result-object v1

    #@99
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@9b
    float-to-int v1, v1

    #@9c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@9e
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@a0
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@a3
    move-result-object v1

    #@a4
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@a6
    float-to-int v1, v1

    #@a7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@a9
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@ab
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@b2
    move-result v1

    #@b3
    float-to-int v1, v1

    #@b4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@b6
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@b8
    # getter for: Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@bf
    move-result v1

    #@c0
    float-to-int v1, v1

    #@c1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@c3
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@c5
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    #@d0
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@d2
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    #@dd
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@df
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    #@ea
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@ec
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@ef
    move-result-object v1

    #@f0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@f3
    move-result-object v1

    #@f4
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    #@f7
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@f9
    # getter for: Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/apportable/webview/WebViewDialog;->access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@104
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@106
    # getter for: Lcom/apportable/webview/WebViewDialog;->mShowing:Z
    invoke-static {v0}, Lcom/apportable/webview/WebViewDialog;->access$1000(Lcom/apportable/webview/WebViewDialog;)Z

    #@109
    move-result v0

    #@10a
    if-eqz v0, :cond_111

    #@10c
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog$1;->this$0:Lcom/apportable/webview/WebViewDialog;

    #@10e
    invoke-virtual {v0}, Lcom/apportable/webview/WebViewDialog;->show()V

    #@111
    :cond_111
    return-void
.end method
