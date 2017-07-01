.class Lcom/apportable/ui/WebView;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/WebView$JSInterface;,
        Lcom/apportable/ui/WebView$JSValueCallback;,
        Lcom/apportable/ui/WebView$WebViewClient;
    }
.end annotation


# instance fields
.field private final apportableMainThread:Ljava/lang/Thread;

.field private final handler:Landroid/os/Handler;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCanGoBack:Z

.field private mCanGoForward:Z

.field private mFrame:Landroid/graphics/RectF;

.field private mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoading:Z

.field private mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@4
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    #@6
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    #@8
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    #@a
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    #@11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    const-string v1, ""

    #@15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@18
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1f
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@23
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@26
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@2d
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@31
    const-string v1, ""

    #@33
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@36
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    #@3e
    new-instance v0, Landroid/os/Handler;

    #@40
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@43
    iput-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@45
    const/4 v0, 0x0

    #@46
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    #@48
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->init()V

    #@4b
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    #@6
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    #@8
    iput-boolean v2, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    #@a
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    #@11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@13
    const-string v1, ""

    #@15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@18
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    #@1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1f
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@23
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@26
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@2d
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@31
    const-string v1, ""

    #@33
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@36
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    #@3e
    new-instance v0, Landroid/os/Handler;

    #@40
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@43
    iput-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@45
    const/4 v0, 0x0

    #@46
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    #@48
    iput-object p3, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    #@4a
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->init()V

    #@4d
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    return-object v0
.end method

.method static synthetic access$1000(Lcom/apportable/ui/WebView;ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onPageFinished(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$1100(Lcom/apportable/ui/WebView;ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onPageStarted(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$1200(Lcom/apportable/ui/WebView;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/WebView;->onReceivedError(IILjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/ui/WebView;ILjava/lang/String;)Z
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView;->onLink(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$1400(Lcom/apportable/ui/WebView;)Landroid/webkit/WebView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    return-object v0
.end method

.method static synthetic access$1402(Lcom/apportable/ui/WebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    return-object p1
.end method

.method static synthetic access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method

.method static synthetic access$2300(Lcom/apportable/ui/WebView;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->initWebView()V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic access$602(Lcom/apportable/ui/WebView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    #@2
    return p1
.end method

.method static synthetic access$702(Lcom/apportable/ui/WebView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    #@2
    return p1
.end method

.method static synthetic access$802(Lcom/apportable/ui/WebView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    #@2
    return p1
.end method

.method static synthetic access$900(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/WebView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/WebView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/WebView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/WebView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/WebView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/apportable/ui/WebView;->setClipChildren(Z)V

    #@4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x13

    #@8
    if-ge v0, v1, :cond_1e

    #@a
    new-instance v0, Landroid/webkit/WebView;

    #@c
    invoke-virtual {p0}, Lcom/apportable/ui/WebView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@15
    invoke-direct {p0}, Lcom/apportable/ui/WebView;->initWebView()V

    #@18
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@1a
    invoke-virtual {p0, v0}, Lcom/apportable/ui/WebView;->setContentView(Landroid/view/View;)V

    #@1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Lcom/apportable/ui/WebView$3;

    #@24
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3;-><init>(Lcom/apportable/ui/WebView;)V

    #@27
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@2a
    goto :goto_1d
.end method

.method private initWebView()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    #@8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    #@b
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@d
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@10
    move-result-object v0

    #@11
    const/4 v1, 0x2

    #@12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    #@15
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@17
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x1

    #@1c
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@1f
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@21
    new-instance v1, Lcom/apportable/ui/WebView$JSInterface;

    #@23
    invoke-direct {v1, p0, p0}, Lcom/apportable/ui/WebView$JSInterface;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    #@26
    const-string v2, "_VERDE_JS"

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    #@2b
    new-instance v0, Lcom/apportable/ui/WebView$WebViewClient;

    #@2d
    invoke-direct {v0, p0, p0}, Lcom/apportable/ui/WebView$WebViewClient;-><init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V

    #@30
    iput-object v0, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    #@32
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@34
    iget-object v1, p0, Lcom/apportable/ui/WebView;->mWebClient:Lcom/apportable/ui/WebView$WebViewClient;

    #@36
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@39
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@3b
    const/16 v1, 0x82

    #@3d
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    #@40
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@42
    new-instance v1, Lcom/apportable/ui/WebView$1;

    #@44
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$1;-><init>(Lcom/apportable/ui/WebView;)V

    #@47
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@4a
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@4c
    new-instance v1, Lcom/apportable/ui/WebView$2;

    #@4e
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$2;-><init>(Lcom/apportable/ui/WebView;)V

    #@51
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@54
    return-void
.end method

.method private jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 5

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ge v0, v1, :cond_25

    #@6
    new-instance v0, Lcom/apportable/ui/WebView$10;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "javascript:window._VERDE_JS.ReturnValue(eval(\""

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, "\"))"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, p0, v1}, Lcom/apportable/ui/WebView$10;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    #@24
    :goto_24
    return-object v0

    #@25
    :cond_25
    new-instance v0, Lcom/apportable/ui/WebView$11;

    #@27
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/WebView$11;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    #@2a
    goto :goto_24
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
.method public canGoBack()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mCanGoBack:Z

    #@2
    return v0
.end method

.method public canGoForward()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mCanGoForward:Z

    #@2
    return v0
.end method

.method public getRequest()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mRequestUrl:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public goBack()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    #@5
    return-void
.end method

.method public goForward()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    #@5
    return-void
.end method

.method public isLoading()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/WebView;->mLoading:Z

    #@2
    return v0
.end method

.method public loadData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    #@0
    if-nez p1, :cond_a

    #@2
    const-string v0, "WebView"

    #@4
    const-string v1, "aborting loadData, data is null"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v6, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@c
    new-instance v0, Lcom/apportable/ui/WebView$4;

    #@e
    move-object v1, p0

    #@f
    move-object v2, p4

    #@10
    move-object v3, p1

    #@11
    move-object v4, p2

    #@12
    move-object v5, p3

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/apportable/ui/WebView$4;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    #@16
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@19
    goto :goto_9
.end method

.method public loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/apportable/ui/WebView$5;

    #@4
    invoke-direct {v1, p0, p2, p1}, Lcom/apportable/ui/WebView$5;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method public loadRequest(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/apportable/ui/WebView$6;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$6;-><init>(Lcom/apportable/ui/WebView;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    return-void
.end method

.method public reload()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    #@5
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@6
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    #@9
    :cond_9
    return-void
.end method

.method public setClipsToBounds(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ge v0, v1, :cond_10

    #@6
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@8
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Lcom/apportable/ui/WebView$8;

    #@16
    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$8;-><init>(Lcom/apportable/ui/WebView;Z)V

    #@19
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1c
    goto :goto_f
.end method

.method public setUseWideViewPort(Z)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x13

    #@4
    if-ge v0, v1, :cond_10

    #@6
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@8
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Lcom/apportable/ui/WebView$9;

    #@16
    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$9;-><init>(Lcom/apportable/ui/WebView;Z)V

    #@19
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@1c
    goto :goto_f
.end method

.method public stopLoading()V
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;

    #@6
    if-ne v0, v1, :cond_15

    #@8
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Lcom/apportable/ui/WebView$7;

    #@e
    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$7;-><init>(Lcom/apportable/ui/WebView;)V

    #@11
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@14
    :goto_14
    return-void

    #@15
    :cond_15
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebView:Landroid/webkit/WebView;

    #@17
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    #@1a
    goto :goto_14
.end method

.method public stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    #@0
    const/4 v6, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mWebViewHasContent:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_c

    #@9
    const-string v0, ""

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v0

    #@10
    iget-object v2, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@12
    const-string v3, ""

    #@14
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@17
    iget-object v2, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1c
    iget-object v2, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1e
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@21
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebView;->jsEvaluationRunnable(Ljava/lang/String;)Ljava/lang/Runnable;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@28
    :cond_28
    iget-object v2, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_3b

    #@30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@33
    move-result-wide v2

    #@34
    const-wide/16 v4, 0x2710

    #@36
    add-long/2addr v4, v0

    #@37
    cmp-long v2, v2, v4

    #@39
    if-ltz v2, :cond_28

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_49

    #@43
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@45
    const/4 v1, 0x1

    #@46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@49
    :cond_49
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4b
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@4e
    iget-object v0, p0, Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/lang/String;

    #@56
    goto :goto_b
.end method
