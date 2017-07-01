.class public Lcom/facebook/ads/InterstitialAdActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;
    }
.end annotation


# static fields
.field private static final AD_WEBVIEW_ID:I = 0x186a1

.field private static final DATA_MODEL_KEY:Ljava/lang/String; = "dataModel"

.field private static final LAST_REQUESTED_ORIENTATION_KEY:Ljava/lang/String; = "lastRequestedOrientation"

.field private static final ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field private static final ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

.field private adWebView:Landroid/webkit/WebView;

.field private dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

.field private displayHeight:I

.field private displayWidth:I

.field private isRestart:Z

.field private lastRequestedOrientation:I

.field private placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/InterstitialAdActivity;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/InterstitialAdActivity;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    #@6
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/HtmlAdHandler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/InterstitialAdActivity;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private loadAdFromIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    if-eqz p2, :cond_49

    #@4
    const-string v0, "dataModel"

    #@6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_49

    #@c
    const-string v0, "dataModel"

    #@e
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@18
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@1a
    if-eqz v0, :cond_34

    #@1c
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@1e
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@20
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/HtmlAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    #@23
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@25
    const-string v1, "https://www.facebook.com/"

    #@27
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@29
    invoke-virtual {v2}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    const-string v3, "text/html"

    #@2f
    const-string v4, "utf-8"

    #@31
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    :cond_34
    const-string v0, "lastRequestedOrientation"

    #@36
    const/4 v1, -0x1

    #@37
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@3d
    const-string v0, "adInterstitialUniqueId"

    #@3f
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    #@45
    const/4 v0, 0x1

    #@46
    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    #@48
    :cond_48
    :goto_48
    return-void

    #@49
    :cond_49
    const-string v0, "displayWidth"

    #@4b
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayWidth:I

    #@51
    const-string v0, "displayHeight"

    #@53
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayHeight:I

    #@59
    const-string v0, "adInterstitialUniqueId"

    #@5b
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    #@61
    invoke-static {p1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromIntentExtra(Landroid/content/Intent;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@67
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@69
    if-eqz v0, :cond_48

    #@6b
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@6d
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@6f
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/HtmlAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    #@72
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@74
    const-string v1, "https://www.facebook.com/"

    #@76
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@78
    invoke-virtual {v2}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    const-string v3, "text/html"

    #@7e
    const-string v4, "utf-8"

    #@80
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@83
    goto :goto_48
.end method

.method private sendBroadcastForEvent(Ljava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    const-string v1, "adInterstitialUniqueId"

    #@7
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@c
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@13
    return-void
.end method

.method private setScreenOrientation(II)V
    .registers 7

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    if-lt p2, p1, :cond_1e

    #@4
    move v1, v2

    #@5
    :goto_5
    const-string v0, "window"

    #@7
    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/WindowManager;

    #@d
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    #@14
    move-result v0

    #@15
    if-eqz v1, :cond_26

    #@17
    packed-switch v0, :pswitch_data_34

    #@1a
    invoke-virtual {p0, v2}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    #@1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    move v1, v3

    #@1f
    goto :goto_5

    #@20
    :pswitch_20
    const/16 v0, 0x9

    #@22
    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    #@25
    goto :goto_1d

    #@26
    :cond_26
    packed-switch v0, :pswitch_data_3c

    #@29
    invoke-virtual {p0, v3}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    #@2c
    goto :goto_1d

    #@2d
    :pswitch_2d
    const/16 v0, 0x8

    #@2f
    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    #@32
    goto :goto_1d

    #@33
    nop

    #@34
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
    .end packed-switch

    #@3c
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@2
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    #@5
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@7
    const-string v1, "about:blank"

    #@9
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    #@12
    const-string v0, "com.facebook.ads.interstitial.dismissed"

    #@14
    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    #@17
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    #@1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    #@0
    const/4 v7, 0x0

    #@1
    const/16 v1, 0x400

    #@3
    const/4 v6, -0x1

    #@4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@7
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->requestWindowFeature(I)Z

    #@b
    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getWindow()Landroid/view/Window;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    #@12
    new-instance v0, Landroid/widget/RelativeLayout;

    #@14
    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@17
    new-instance v1, Landroid/webkit/WebView;

    #@19
    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@1c
    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@1e
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@20
    const v2, 0x186a1

    #@23
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    #@26
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@28
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #@2a
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@2d
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@30
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@32
    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;

    #@34
    invoke-direct {v2, p0, v7}, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/InterstitialAdActivity$1;)V

    #@37
    new-instance v3, Lcom/facebook/ads/internal/AdWebViewInterface;

    #@39
    invoke-direct {v3}, Lcom/facebook/ads/internal/AdWebViewInterface;-><init>()V

    #@3c
    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/AdWebViewUtils;->config(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Lcom/facebook/ads/internal/AdWebViewInterface;)V

    #@3f
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@41
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    #@44
    new-instance v1, Lcom/facebook/ads/internal/HtmlAdHandler;

    #@46
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->adWebView:Landroid/webkit/WebView;

    #@48
    const-wide/16 v4, 0x3e8

    #@4a
    invoke-direct {v1, v2, v7, v4, v5}, Lcom/facebook/ads/internal/HtmlAdHandler;-><init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;J)V

    #@4d
    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    #@4f
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@51
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@54
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@57
    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    #@5a
    move-result-object v0

    #@5b
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->loadAdFromIntentOrSavedState(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@5e
    const-string v0, "com.facebook.ads.interstitial.displayed"

    #@60
    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V

    #@63
    return-void
.end method

.method public onRestart()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    #@6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@5
    if-eqz v0, :cond_12

    #@7
    const-string v0, "dataModel"

    #@9
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->dataModel:Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@b
    invoke-virtual {v1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->saveToBundle()Landroid/os/Bundle;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@12
    :cond_12
    const-string v0, "lastRequestedOrientation"

    #@14
    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@19
    const-string v0, "adInterstitialUniqueId"

    #@1b
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->placementId:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    return-void
.end method

.method public onStart()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    #@5
    if-nez v0, :cond_12

    #@7
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayWidth:I

    #@9
    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->displayHeight:I

    #@b
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->setScreenOrientation(II)V

    #@e
    :cond_e
    :goto_e
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->isRestart:Z

    #@11
    return-void

    #@12
    :cond_12
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@14
    if-ltz v0, :cond_e

    #@16
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@18
    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    #@1b
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@1e
    goto :goto_e
.end method

.method public setRequestedOrientation(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/InterstitialAdActivity;->lastRequestedOrientation:I

    #@2
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    #@5
    return-void
.end method
