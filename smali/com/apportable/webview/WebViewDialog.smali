.class public Lcom/apportable/webview/WebViewDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewDialog"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFrame:Landroid/graphics/RectF;

.field public mObject:I

.field private mShowing:Z

.field private mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/webview/WebViewDialog;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@8
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Landroid/graphics/RectF;

    #@5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/apportable/webview/WebViewDialog;->mShowing:Z

    #@d
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog;->mCtx:Landroid/content/Context;

    #@f
    iput-object p3, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@11
    iput p2, p0, Lcom/apportable/webview/WebViewDialog;->mObject:I

    #@13
    invoke-direct {p0}, Lcom/apportable/webview/WebViewDialog;->init()V

    #@16
    return-void
.end method

.method static synthetic access$000(IIJI)Z
    .registers 7

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apportable/webview/WebViewDialog;->nativeKeyDown(IIJI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$100(IIJI)Z
    .registers 7

    #@0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apportable/webview/WebViewDialog;->nativeKeyUp(IIJI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1000(Lcom/apportable/webview/WebViewDialog;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/webview/WebViewDialog;->mShowing:Z

    #@2
    return v0
.end method

.method static synthetic access$200(Lcom/apportable/webview/WebViewDialog;)Landroid/app/Dialog;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Lcom/apportable/webview/WebViewDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;

    #@2
    return-object p1
.end method

.method static synthetic access$300(Lcom/apportable/webview/WebViewDialog;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mCtx:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/webview/WebViewDialog;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@2
    return-object v0
.end method

.method static synthetic access$402(Lcom/apportable/webview/WebViewDialog;Lcom/apportable/webview/WebViewDialog$ApportableWebView;)Lcom/apportable/webview/WebViewDialog$ApportableWebView;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog;->mWebView:Lcom/apportable/webview/WebViewDialog$ApportableWebView;

    #@2
    return-object p1
.end method

.method static synthetic access$500(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/webview/WebViewDialog;->onPageFinished(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$600(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/webview/WebViewDialog;->onPageStarted(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/apportable/webview/WebViewDialog;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/webview/WebViewDialog;->onReceivedError(IILjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$800(Lcom/apportable/webview/WebViewDialog;ILjava/lang/String;)Z
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/webview/WebViewDialog;->onLink(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$900(Lcom/apportable/webview/WebViewDialog;)Landroid/graphics/RectF;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/webview/WebViewDialog;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/webview/WebViewDialog;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/webview/WebViewDialog;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private dismiss()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$9;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$9;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method private init()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$1;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$1;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method private static native nativeKeyDown(IIJI)Z
.end method

.method private static native nativeKeyUp(IIJI)Z
.end method

.method private native onLink(ILjava/lang/String;)Z
.end method

.method private native onPageFinished(ILjava/lang/String;)V
.end method

.method private native onPageStarted(ILjava/lang/String;)V
.end method

.method private native onReceivedError(IILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public cancel()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;

    #@2
    if-eqz v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/apportable/webview/WebViewDialog;->dismiss()V

    #@7
    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$10;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$10;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public evaluateJavascriptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$4;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog$4;-><init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    const-string v0, "WebViewDialog"

    #@a
    const-string v1, "evaluating javascript in WebViewDialog does not return value"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public goBack()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$7;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$7;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public goForward()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$8;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$8;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public hide()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    :try_start_2
    iput-boolean v0, p0, Lcom/apportable/webview/WebViewDialog;->mShowing:Z

    #@4
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_13

    #@6
    if-nez v0, :cond_a

    #@8
    :goto_8
    monitor-exit p0

    #@9
    return-void

    #@a
    :cond_a
    :try_start_a
    new-instance v0, Lcom/apportable/webview/WebViewDialog$12;

    #@c
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$12;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@f
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    #@12
    goto :goto_8

    #@13
    :catchall_13
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$3;

    #@2
    invoke-direct {v0, p0, p2, p1}, Lcom/apportable/webview/WebViewDialog$3;-><init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public loadRequest(Ljava/lang/String;)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog$2;-><init>(Lcom/apportable/webview/WebViewDialog;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public reload()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$6;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$6;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$16;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog$16;-><init>(Lcom/apportable/webview/WebViewDialog;I)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@2
    new-instance v0, Lcom/apportable/webview/WebViewDialog$15;

    #@4
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$15;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@7
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_6

    #@2
    invoke-virtual {p0}, Lcom/apportable/webview/WebViewDialog;->hide()V

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    invoke-virtual {p0}, Lcom/apportable/webview/WebViewDialog;->show()V

    #@9
    goto :goto_5
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$13;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog$13;-><init>(Lcom/apportable/webview/WebViewDialog;Z)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$14;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/webview/WebViewDialog$14;-><init>(Lcom/apportable/webview/WebViewDialog;Z)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public show()V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x1

    #@2
    :try_start_2
    iput-boolean v0, p0, Lcom/apportable/webview/WebViewDialog;->mShowing:Z

    #@4
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mDialog:Landroid/app/Dialog;

    #@6
    if-eqz v0, :cond_20

    #@8
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@a
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@c
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@e
    iget v1, v1, Landroid/graphics/RectF;->right:F

    #@10
    cmpl-float v0, v0, v1

    #@12
    if-gez v0, :cond_20

    #@14
    iget-object v0, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@16
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@18
    iget-object v1, p0, Lcom/apportable/webview/WebViewDialog;->mFrame:Landroid/graphics/RectF;

    #@1a
    iget v1, v1, Landroid/graphics/RectF;->bottom:F
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_2b

    #@1c
    cmpl-float v0, v0, v1

    #@1e
    if-ltz v0, :cond_22

    #@20
    :cond_20
    :goto_20
    monitor-exit p0

    #@21
    return-void

    #@22
    :cond_22
    :try_start_22
    new-instance v0, Lcom/apportable/webview/WebViewDialog$11;

    #@24
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$11;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@27
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2b

    #@2a
    goto :goto_20

    #@2b
    :catchall_2b
    move-exception v0

    #@2c
    monitor-exit p0

    #@2d
    throw v0
.end method

.method public stopLoading()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/webview/WebViewDialog$5;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/webview/WebViewDialog$5;-><init>(Lcom/apportable/webview/WebViewDialog;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method
