.class public Lcom/facebook/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AdView$AdWebViewClient;,
        Lcom/facebook/ads/AdView$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:I = 0xff

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final MIN_ALPHA:I = 0xe5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

.field private adListener:Lcom/facebook/ads/AdListener;

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private final adSize:Lcom/facebook/ads/AdSize;

.field private adWebView:Landroid/webkit/WebView;

.field private currentAlpha:I

.field private final metrics:Landroid/util/DisplayMetrics;

.field private final placementId:Ljava/lang/String;

.field private final screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/AdView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/AdView;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@4
    const/16 v0, 0xff

    #@6
    iput v0, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    #@8
    iput-object v1, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    #@a
    if-eqz p3, :cond_10

    #@c
    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    #@e
    if-ne p3, v0, :cond_18

    #@10
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string v1, "adSize"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    :cond_18
    iput-object p2, p0, Lcom/facebook/ads/AdView;->placementId:Ljava/lang/String;

    #@1a
    iput-object p3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@26
    new-instance v0, Lcom/facebook/ads/AdView$ScreenStateReceiver;

    #@28
    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/AdView$ScreenStateReceiver;-><init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V

    #@2b
    iput-object v0, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    #@2d
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->initializeView(Landroid/content/Context;)V

    #@30
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdHandler;

    #@32
    iget-object v1, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@34
    new-instance v2, Lcom/facebook/ads/AdView$1;

    #@36
    invoke-direct {v2, p0}, Lcom/facebook/ads/AdView$1;-><init>(Lcom/facebook/ads/AdView;)V

    #@39
    const-wide/16 v4, 0x3e8

    #@3b
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/ads/internal/HtmlAdHandler;-><init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V

    #@3e
    iput-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@40
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->registerScreenStateReceiver()V

    #@43
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/ads/AdView;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->isAdViewVisible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    #@3
    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/AdView;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;
    .registers 2

    #@0
    new-instance v0, Lcom/facebook/ads/AdView$2;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/ads/AdView$2;-><init>(Lcom/facebook/ads/AdView;)V

    #@5
    return-object v0
.end method

.method private ensureAdRequestController()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "No request controller available, has the AdView been destroyed?"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method

.method private initializeView(Landroid/content/Context;)V
    .registers 9

    #@0
    const/4 v4, -0x1

    #@1
    iget-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@5
    int-to-float v0, v0

    #@6
    iget-object v1, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@8
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@a
    div-float/2addr v0, v1

    #@b
    float-to-int v0, v0

    #@c
    iget-object v1, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@e
    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getWidth()I

    #@11
    move-result v1

    #@12
    if-lt v0, v1, :cond_7b

    #@14
    iget-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@16
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@18
    :goto_18
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@1a
    iget-object v2, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@1c
    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    #@1f
    move-result v2

    #@20
    int-to-float v2, v2

    #@21
    iget-object v3, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@23
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #@25
    mul-float/2addr v2, v3

    #@26
    float-to-double v2, v2

    #@27
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@2a
    move-result-wide v2

    #@2b
    double-to-int v2, v2

    #@2c
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@2f
    const/16 v0, 0xe

    #@31
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@34
    invoke-virtual {p0, v1}, Lcom/facebook/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    new-instance v0, Landroid/webkit/WebView;

    #@39
    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@3c
    iput-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@3e
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@40
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@42
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@45
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@48
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@4a
    const/16 v1, 0x8

    #@4c
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    #@4f
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@51
    new-instance v1, Lcom/facebook/ads/AdView$AdWebViewClient;

    #@53
    const/4 v2, 0x0

    #@54
    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/AdView$AdWebViewClient;-><init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V

    #@57
    new-instance v2, Lcom/facebook/ads/internal/AdWebViewInterface;

    #@59
    invoke-direct {v2}, Lcom/facebook/ads/internal/AdWebViewInterface;-><init>()V

    #@5c
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/AdWebViewUtils;->config(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Lcom/facebook/ads/internal/AdWebViewInterface;)V

    #@5f
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@61
    invoke-virtual {p0, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    #@64
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    #@66
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    #@69
    move-result-object v1

    #@6a
    iget-object v2, p0, Lcom/facebook/ads/AdView;->placementId:Ljava/lang/String;

    #@6c
    iget-object v3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@6e
    const/4 v4, 0x1

    #@6f
    sget-object v5, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@71
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;

    #@74
    move-result-object v6

    #@75
    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    #@78
    iput-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@7a
    return-void

    #@7b
    :cond_7b
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@7d
    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    #@80
    move-result v0

    #@81
    int-to-float v0, v0

    #@82
    iget-object v1, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@84
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@86
    mul-float/2addr v0, v1

    #@87
    float-to-double v0, v0

    #@88
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@8b
    move-result-wide v0

    #@8c
    double-to-int v0, v0

    #@8d
    goto :goto_18
.end method

.method private isAdViewVisible()Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getVisibility()I

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_9

    #@8
    :cond_8
    :goto_8
    return v0

    #@9
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getParent()Landroid/view/ViewParent;

    #@c
    move-result-object v2

    #@d
    if-eqz v2, :cond_8

    #@f
    iget v2, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    #@11
    const/16 v3, 0xe5

    #@13
    if-lt v2, v3, :cond_8

    #@15
    const/4 v2, 0x2

    #@16
    new-array v2, v2, [I

    #@18
    invoke-virtual {p0, v2}, Lcom/facebook/ads/AdView;->getLocationOnScreen([I)V

    #@1b
    aget v3, v2, v0

    #@1d
    if-ltz v3, :cond_8

    #@1f
    iget-object v3, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@21
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    #@23
    aget v4, v2, v0

    #@25
    sub-int/2addr v3, v4

    #@26
    iget-object v4, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@28
    invoke-virtual {v4}, Lcom/facebook/ads/AdSize;->getWidth()I

    #@2b
    move-result v4

    #@2c
    int-to-float v4, v4

    #@2d
    iget-object v5, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@2f
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    #@31
    mul-float/2addr v4, v5

    #@32
    float-to-double v4, v4

    #@33
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@36
    move-result-wide v4

    #@37
    double-to-int v4, v4

    #@38
    if-lt v3, v4, :cond_8

    #@3a
    iget-object v3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    #@3c
    invoke-virtual {v3}, Lcom/facebook/ads/AdSize;->getHeight()I

    #@3f
    move-result v3

    #@40
    int-to-float v3, v3

    #@41
    iget-object v4, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@43
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    #@45
    mul-float/2addr v3, v4

    #@46
    float-to-double v4, v3

    #@47
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@4a
    move-result-wide v4

    #@4b
    double-to-int v3, v4

    #@4c
    aget v4, v2, v1

    #@4e
    if-gez v4, :cond_5a

    #@50
    aget v4, v2, v1

    #@52
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@55
    move-result v4

    #@56
    div-int/lit8 v5, v3, 0x2

    #@58
    if-gt v4, v5, :cond_8

    #@5a
    :cond_5a
    aget v2, v2, v1

    #@5c
    add-int/2addr v2, v3

    #@5d
    iget-object v4, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    #@5f
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    #@61
    sub-int/2addr v2, v4

    #@62
    div-int/lit8 v3, v3, 0x2

    #@64
    if-gt v2, v3, :cond_8

    #@66
    move v0, v1

    #@67
    goto :goto_8
.end method

.method private registerScreenStateReceiver()V
    .registers 4

    #@0
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    const-string v1, "android.intent.action.SCREEN_ON"

    #@4
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@7
    const-string v1, "android.intent.action.SCREEN_OFF"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    #@12
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@15
    return-void
.end method

.method private unregisterScreenStateReceiver()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@9
    return-void
.end method

.method private updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@2
    const-string v1, "about:blank"

    #@4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    #@d
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@f
    const/16 v1, 0x8

    #@11
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    #@14
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@16
    const-string v1, "https://www.facebook.com/"

    #@18
    invoke-virtual {p1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    const-string v3, "text/html"

    #@1e
    const-string v4, "utf-8"

    #@20
    const/4 v5, 0x0

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    #@2a
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@6
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@c
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@e
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@11
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->unregisterScreenStateReceiver()V

    #@14
    return-void
.end method

.method public loadAd()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->ensureAdRequestController()V

    #@3
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@5
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    #@8
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3

    #@0
    iput p1, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    #@2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onSetAlpha(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    #@3
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@9
    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/AdRequestController;->onWindowVisibilityChanged(I)V

    #@c
    :cond_c
    if-nez p1, :cond_14

    #@e
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@10
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->scheduleImpressionRetry()V

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@16
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@19
    goto :goto_13
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    #@2
    return-void
.end method
