.class public Lcom/facebook/ads/NativeAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$ClickData;,
        Lcom/facebook/ads/NativeAd$Image;,
        Lcom/facebook/ads/NativeAd$Rating;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static viewMapping:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

.field private adListener:Lcom/facebook/ads/AdListener;

.field private adLoaded:Z

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private adView:Landroid/view/View;

.field private clickData:Lcom/facebook/ads/NativeAd$ClickData;

.field private clickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private handler:Lcom/facebook/ads/internal/NativeAdHandler;

.field private volatile loadRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/NativeAd;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    #@8
    new-instance v0, Ljava/util/WeakHashMap;

    #@a
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@d
    sput-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    #@c
    new-instance v0, Lcom/facebook/ads/NativeAd$ClickData;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAd$ClickData;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    #@12
    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@14
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    #@16
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    #@18
    sget-object v3, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    #@1a
    const/4 v4, 0x0

    #@1b
    sget-object v5, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    #@1d
    new-instance v6, Lcom/facebook/ads/NativeAd$1;

    #@1f
    invoke-direct {v6, p0}, Lcom/facebook/ads/NativeAd$1;-><init>(Lcom/facebook/ads/NativeAd;)V

    #@22
    move-object v2, p2

    #@23
    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    #@26
    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@28
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Lcom/facebook/ads/NativeAd;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    return p1
.end method

.method static synthetic access$400(Lcom/facebook/ads/NativeAd;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->isViewOnScreen()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private addListener(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@b
    return-void
.end method

.method private collectAllSubviews(Ljava/util/List;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3
    instance-of v0, p2, Landroid/view/ViewGroup;

    #@5
    if-eqz v0, :cond_1a

    #@7
    check-cast p2, Landroid/view/ViewGroup;

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_1a

    #@10
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/NativeAd;->collectAllSubviews(Ljava/util/List;Landroid/view/View;)V

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method private detachListeners()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1a

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/View;

    #@13
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@16
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@19
    goto :goto_7

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    #@1c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@1f
    return-void
.end method

.method public static downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/ads/internal/DownloadImageTask;

    #@2
    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [Ljava/lang/String;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    aput-object v3, v1, v2

    #@f
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@12
    return-void
.end method

.method private ensureAdRequestController()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@2
    if-nez v0, :cond_13

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "No request controller available, has the NativeAd been destroyed?"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@12
    throw v0

    #@13
    :cond_13
    return-void
.end method

.method private isValidAlpha()Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3
    const/16 v2, 0xb

    #@5
    if-lt v1, v2, :cond_14

    #@7
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@9
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    #@c
    move-result v1

    #@d
    const v2, 0x3f666666    # 0.9f

    #@10
    cmpl-float v1, v1, v2

    #@12
    if-lez v1, :cond_15

    #@14
    :cond_14
    :goto_14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_14
.end method

.method private isViewOnScreen()Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@3
    if-eqz v1, :cond_1f

    #@5
    iget-boolean v1, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@7
    if-eqz v1, :cond_1f

    #@9
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1f

    #@11
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@13
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_1f

    #@19
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->isValidAlpha()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_20

    #@1f
    :cond_1f
    :goto_1f
    return v0

    #@20
    :cond_20
    new-instance v1, Landroid/graphics/Rect;

    #@22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@25
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@27
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1f

    #@2d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@30
    move-result v2

    #@31
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@34
    move-result v1

    #@35
    mul-int/2addr v1, v2

    #@36
    int-to-double v2, v1

    #@37
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@39
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@3c
    move-result v1

    #@3d
    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@3f
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@42
    move-result v4

    #@43
    mul-int/2addr v1, v4

    #@44
    int-to-double v4, v1

    #@45
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    #@47
    div-double/2addr v4, v6

    #@48
    cmpl-double v1, v2, v4

    #@4a
    if-ltz v1, :cond_1f

    #@4c
    const/4 v0, 0x1

    #@4d
    goto :goto_1f
.end method


# virtual methods
.method public destroy()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@3
    if-eqz v0, :cond_c

    #@5
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@7
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    #@a
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@c
    :cond_c
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->detachListeners()V

    #@f
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@11
    if-eqz v0, :cond_1a

    #@13
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@15
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->cancelImpressionRetry()V

    #@18
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@1a
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@1c
    if-eqz v0, :cond_27

    #@1e
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@20
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@22
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@27
    :cond_27
    return-void
.end method

.method public getAdBody()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getBody()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getCallToAction()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getImage()Lcom/facebook/ads/NativeAd$Image;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAd$Image;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getIcon()Lcom/facebook/ads/NativeAd$Image;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getSocialContext()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getStarRating()Lcom/facebook/ads/NativeAd$Rating;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public getAdTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getTitle()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_5
.end method

.method public isAdLoaded()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2
    return v0
.end method

.method public loadAd()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->loadRequested:Z

    #@2
    if-eqz v0, :cond_13

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Ad already loaded"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@12
    throw v0

    #@13
    :cond_13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->loadRequested:Z

    #@16
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->ensureAdRequestController()V

    #@19
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    #@1b
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    #@1e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    #@6
    invoke-interface {v0, p0}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@b
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    #@d
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@f
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$ClickData;->getData()Ljava/util/Map;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/NativeAdDataModel;->handleClick(Landroid/content/Context;Ljava/util/Map;)V

    #@16
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@5
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$ClickData;->initialized()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_89

    #@b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_89

    #@11
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@13
    if-eqz v0, :cond_89

    #@15
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@17
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@1c
    move-result v1

    #@1d
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->width:I
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd$ClickData;->access$502(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@20
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@22
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@24
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@27
    move-result v1

    #@28
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->height:I
    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd$ClickData;->access$602(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@2b
    new-array v0, v4, [I

    #@2d
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@2f
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    #@32
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@34
    aget v2, v0, v5

    #@36
    int-to-float v2, v2

    #@37
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->adPositionX:F
    invoke-static {v1, v2}, Lcom/facebook/ads/NativeAd$ClickData;->access$702(Lcom/facebook/ads/NativeAd$ClickData;F)F

    #@3a
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@3c
    aget v2, v0, v6

    #@3e
    int-to-float v2, v2

    #@3f
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->adPositionY:F
    invoke-static {v1, v2}, Lcom/facebook/ads/NativeAd$ClickData;->access$802(Lcom/facebook/ads/NativeAd$ClickData;F)F

    #@42
    new-instance v1, Landroid/graphics/Rect;

    #@44
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@47
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@49
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@4c
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@4e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@51
    move-result v3

    #@52
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->visibleWidth:I
    invoke-static {v2, v3}, Lcom/facebook/ads/NativeAd$ClickData;->access$902(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@55
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@57
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@5a
    move-result v1

    #@5b
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->visibleHeight:I
    invoke-static {v2, v1}, Lcom/facebook/ads/NativeAd$ClickData;->access$1002(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@5e
    new-array v1, v4, [I

    #@60
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@63
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@68
    move-result v3

    #@69
    float-to-int v3, v3

    #@6a
    aget v4, v1, v5

    #@6c
    add-int/2addr v3, v4

    #@6d
    aget v4, v0, v5

    #@6f
    sub-int/2addr v3, v4

    #@70
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->xCoord:I
    invoke-static {v2, v3}, Lcom/facebook/ads/NativeAd$ClickData;->access$1102(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@73
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@78
    move-result v3

    #@79
    float-to-int v3, v3

    #@7a
    aget v1, v1, v6

    #@7c
    add-int/2addr v1, v3

    #@7d
    aget v0, v0, v6

    #@7f
    sub-int v0, v1, v0

    #@81
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->yCoord:I
    invoke-static {v2, v0}, Lcom/facebook/ads/NativeAd$ClickData;->access$1202(Lcom/facebook/ads/NativeAd$ClickData;I)I

    #@84
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickData:Lcom/facebook/ads/NativeAd$ClickData;

    #@86
    # setter for: Lcom/facebook/ads/NativeAd$ClickData;->initialized:Z
    invoke-static {v0, v6}, Lcom/facebook/ads/NativeAd$ClickData;->access$1302(Lcom/facebook/ads/NativeAd$ClickData;Z)Z

    #@89
    :cond_89
    return v5
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .registers 3

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/NativeAd;->collectAllSubviews(Ljava/util/List;Landroid/view/View;)V

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    #@b
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_11

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Must provide a View"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@10
    throw v0

    #@11
    :cond_11
    if-eqz p2, :cond_19

    #@13
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_28

    #@19
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v1, "Invalid set of clickable views"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@23
    move-result-object v1

    #@24
    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@27
    throw v0

    #@28
    :cond_28
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    #@2a
    if-nez v0, :cond_34

    #@2c
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    #@2e
    const-string v1, "Ad not loaded"

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    :goto_33
    return-void

    #@34
    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@36
    if-eqz v0, :cond_42

    #@38
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    #@3a
    const-string v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    #@3c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    #@42
    :cond_42
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@44
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_62

    #@4a
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    #@4c
    const-string v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    #@4e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@53
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@59
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/facebook/ads/NativeAd;

    #@5f
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    #@62
    :cond_62
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v1

    #@68
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_78

    #@6e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Landroid/view/View;

    #@74
    invoke-direct {p0, v0}, Lcom/facebook/ads/NativeAd;->addListener(Landroid/view/View;)V

    #@77
    goto :goto_68

    #@78
    :cond_78
    new-instance v0, Lcom/facebook/ads/internal/NativeAdHandler;

    #@7a
    new-instance v1, Lcom/facebook/ads/NativeAd$2;

    #@7c
    invoke-direct {v1, p0}, Lcom/facebook/ads/NativeAd$2;-><init>(Lcom/facebook/ads/NativeAd;)V

    #@7f
    const-wide/16 v2, 0x3e8

    #@81
    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    #@83
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/NativeAdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLcom/facebook/ads/internal/NativeAdDataModel;)V

    #@86
    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@88
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@8a
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->scheduleImpressionRetry()V

    #@8d
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@8f
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@91
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@94
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    goto :goto_33
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    #@2
    return-void
.end method

.method public unregisterView()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@3
    if-nez v0, :cond_6

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@8
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_20

    #@10
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@12
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@1a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    if-eq v0, p0, :cond_2f

    #@20
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    const-string v1, "View not registered with this NativeAd"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    #@31
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@33
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->detachListeners()V

    #@39
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@3b
    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->cancelImpressionRetry()V

    #@3e
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    #@40
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    #@42
    goto :goto_5
.end method
