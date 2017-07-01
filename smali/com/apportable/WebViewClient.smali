.class public Lcom/apportable/WebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private context:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/apportable/WebViewClient;->context:J

    #@5
    return-void
.end method

.method private native nativeOnLink(JLjava/lang/String;)Z
.end method

.method private native nativeOnPageFinished(JLjava/lang/String;)V
.end method

.method private native nativeOnPageStarted(JLjava/lang/String;)V
.end method

.method private native nativeOnReceivedError(JILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/WebViewClient;->context:J

    #@2
    invoke-direct {p0, v0, v1, p2}, Lcom/apportable/WebViewClient;->nativeOnPageFinished(JLjava/lang/String;)V

    #@5
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    #@0
    iget-wide v0, p0, Lcom/apportable/WebViewClient;->context:J

    #@2
    invoke-direct {p0, v0, v1, p2}, Lcom/apportable/WebViewClient;->nativeOnPageStarted(JLjava/lang/String;)V

    #@5
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    #@0
    iget-wide v2, p0, Lcom/apportable/WebViewClient;->context:J

    #@2
    move-object v1, p0

    #@3
    move v4, p2

    #@4
    move-object v5, p3

    #@5
    move-object v6, p4

    #@6
    invoke-direct/range {v1 .. v6}, Lcom/apportable/WebViewClient;->nativeOnReceivedError(JILjava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/apportable/WebViewClient;->context:J

    #@2
    invoke-direct {p0, v0, v1, p2}, Lcom/apportable/WebViewClient;->nativeOnLink(JLjava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    return v0
.end method
