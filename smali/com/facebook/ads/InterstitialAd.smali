.class public Lcom/facebook/ads/InterstitialAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DISPLAY_HEIGHT_INTENT_EXTRA:Ljava/lang/String; = "displayHeight"

.field public static final DISPLAY_ROTATION_INTENT_EXTRA:Ljava/lang/String; = "displayRotation"

.field public static final DISPLAY_WIDTH_INTENT_EXTRA:Ljava/lang/String; = "displayWidth"

.field public static final INTERSTITIAL_CLICKED:Ljava/lang/String; = "com.facebook.ads.interstitial.clicked"

.field public static final INTERSTITIAL_DISMISSED:Ljava/lang/String; = "com.facebook.ads.interstitial.dismissed"

.field public static final INTERSTITIAL_DISPLAYED:Ljava/lang/String; = "com.facebook.ads.interstitial.displayed"

.field public static final INTERSTITIAL_UNIQUE_ID_EXTRA:Ljava/lang/String; = "adInterstitialUniqueId"


# instance fields
.field private adListener:Lcom/facebook/ads/InterstitialAdListener;

.field private adLoaded:Z

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private adResponse:Lcom/facebook/ads/internal/AdResponse;

.field private final broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    #@0
    const/4 v4, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v4, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@6
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    #@12
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    #@14
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@16
    sget-object v3, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    #@18
    sget-object v5, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@1a
    new-instance v6, Lcom/facebook/ads/InterstitialAd$1;

    #@1c
    invoke-direct {v6, p0}, Lcom/facebook/ads/InterstitialAd$1;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    #@1f
    move-object v2, p2

    #@20
    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    #@23
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@25
    new-instance v0, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;-><init>(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$1;)V

    #@2b
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    #@2d
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    #@2f
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->register()V

    #@32
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/AdResponse;)Lcom/facebook/ads/internal/AdResponse;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;

    #@2
    return-object p1
.end method

.method static synthetic access$102(Lcom/facebook/ads/InterstitialAd;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@2
    return p1
.end method

.method static synthetic access$200(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/ads/InterstitialAd;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/ads/InterstitialAd;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private ensureAdRequestController()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "No request controller available, has the InterstitialAd been destroyed?"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@6
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@c
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->broadcastReceiver:Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;

    #@e
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd$AdInterstitialBroadcastReceiver;->unregister()V

    #@11
    :cond_11
    return-void
.end method

.method public isAdLoaded()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@2
    return v0
.end method

.method public loadAd()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/InterstitialAd;->ensureAdRequestController()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@6
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    #@b
    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    #@2
    return-void
.end method

.method public show()Z
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_11

    #@4
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    #@6
    if-eqz v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adListener:Lcom/facebook/ads/InterstitialAdListener;

    #@a
    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@c
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    :goto_10
    return v0

    #@11
    :cond_11
    new-instance v1, Landroid/content/Intent;

    #@13
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@15
    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    #@17
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1a
    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->adLoaded:Z

    #@1c
    if-eqz v0, :cond_29

    #@1e
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->adResponse:Lcom/facebook/ads/internal/AdResponse;

    #@20
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdResponse;->getDataModel()Lcom/facebook/ads/internal/AdDataModel;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    #@26
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->addToIntentExtra(Landroid/content/Intent;)V

    #@29
    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@2b
    const-string v2, "window"

    #@2d
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/view/WindowManager;

    #@33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@36
    move-result-object v0

    #@37
    new-instance v2, Landroid/util/DisplayMetrics;

    #@39
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    #@3c
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@3f
    const-string v3, "displayRotation"

    #@41
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    #@44
    move-result v0

    #@45
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@48
    const-string v0, "displayWidth"

    #@4a
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@4c
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4f
    const-string v0, "displayHeight"

    #@51
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@53
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@56
    const-string v0, "adInterstitialUniqueId"

    #@58
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAd;->uniqueId:Ljava/lang/String;

    #@5a
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5d
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->context:Landroid/content/Context;

    #@5f
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@62
    const/4 v0, 0x1

    #@63
    goto :goto_10
.end method
