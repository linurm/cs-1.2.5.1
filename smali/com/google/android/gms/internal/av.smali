.class public final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;


# instance fields
.field private lQ:Lcom/google/android/gms/ads/AdListener;

.field private mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private final mContext:Landroid/content/Context;

.field private mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private mj:Ljava/lang/String;

.field private final mw:Lcom/google/android/gms/internal/bs;

.field private final mx:Lcom/google/android/gms/internal/ak;

.field private my:Lcom/google/android/gms/internal/aq;

.field private mz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ak;->aF()Lcom/google/android/gms/internal/ak;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/av;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/bs;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/internal/bs;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/bs;

    #@a
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mContext:Landroid/content/Context;

    #@c
    iput-object p2, p0, Lcom/google/android/gms/internal/av;->mx:Lcom/google/android/gms/internal/ak;

    #@e
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mj:Ljava/lang/String;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/av;->l(Ljava/lang/String;)V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mContext:Landroid/content/Context;

    #@9
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@b
    invoke-direct {v1}, Lcom/google/android/gms/internal/al;-><init>()V

    #@e
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mj:Ljava/lang/String;

    #@10
    iget-object v3, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/bs;

    #@12
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ah;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/aq;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@1a
    if-eqz v0, :cond_28

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@1e
    new-instance v1, Lcom/google/android/gms/internal/ag;

    #@20
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@22
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    #@25
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ap;)V

    #@28
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2a
    if-eqz v0, :cond_38

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@2e
    new-instance v1, Lcom/google/android/gms/internal/an;

    #@30
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@32
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    #@35
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/as;)V

    #@38
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@3a
    if-eqz v0, :cond_48

    #@3c
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@3e
    new-instance v1, Lcom/google/android/gms/internal/dh;

    #@40
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@42
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    #@45
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dc;)V

    #@48
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@4a
    if-eqz v0, :cond_5a

    #@4c
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@4e
    new-instance v1, Lcom/google/android/gms/internal/dl;

    #@50
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@52
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dl;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    #@55
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mz:Ljava/lang/String;

    #@57
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V

    #@5a
    :cond_5a
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-nez v0, :cond_23

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " is called."

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :cond_23
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/at;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-nez v0, :cond_9

    #@4
    const-string v0, "loadAd"

    #@6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/av;->k(Ljava/lang/String;)V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mx:Lcom/google/android/gms/internal/ak;

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ak;->a(Landroid/content/Context;Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/internal/ai;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ai;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_22

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/bs;

    #@1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/at;->aI()Ljava/util/Map;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bs;->c(Ljava/util/Map;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    #@22
    :cond_22
    :goto_22
    return-void

    #@23
    :catch_23
    move-exception v0

    #@24
    const-string v1, "Failed to load ad."

    #@26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    goto :goto_22
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2
    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@2
    return-object v0
.end method

.method public isLoaded()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@3
    if-nez v1, :cond_6

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@8
    invoke-interface {v1}, Lcom/google/android/gms/internal/aq;->isReady()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    #@b
    move-result v0

    #@c
    goto :goto_5

    #@d
    :catch_d
    move-exception v1

    #@e
    const-string v2, "Failed to check if ad is ready."

    #@10
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    goto :goto_5
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    #@0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@8
    if-eqz p1, :cond_13

    #@a
    new-instance v0, Lcom/google/android/gms/internal/ag;

    #@c
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    #@f
    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ap;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    #@12
    :cond_12
    :goto_12
    return-void

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_f

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v1, "Failed to set the AdListener."

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    goto :goto_12
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mj:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mj:Ljava/lang/String;

    #@e
    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    #@0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@8
    if-eqz p1, :cond_13

    #@a
    new-instance v0, Lcom/google/android/gms/internal/an;

    #@c
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    #@f
    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/as;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    #@12
    :cond_12
    :goto_12
    return-void

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_f

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v1, "Failed to set the AppEventListener."

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    goto :goto_12
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Play store purchase parameter has already been set."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@10
    if-eqz v0, :cond_1e

    #@12
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@14
    if-eqz p1, :cond_1f

    #@16
    new-instance v0, Lcom/google/android/gms/internal/dh;

    #@18
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    #@1b
    :goto_1b
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dc;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_21

    #@1e
    :cond_1e
    :goto_1e
    return-void

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    goto :goto_1b

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Failed to set the InAppPurchaseListener."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1e
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 5

    #@0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@8
    if-eqz p1, :cond_13

    #@a
    new-instance v0, Lcom/google/android/gms/internal/dl;

    #@c
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dl;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    #@f
    :goto_f
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    #@12
    :cond_12
    :goto_12
    return-void

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_f

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v1, "Failed to set the play store purchase parameter."

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    goto :goto_12
.end method

.method public show()V
    .registers 3

    #@0
    :try_start_0
    const-string v0, "show"

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/av;->l(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Lcom/google/android/gms/internal/aq;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->showInterstitial()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    #@a
    :goto_a
    return-void

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v1, "Failed to show interstitial."

    #@e
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11
    goto :goto_a
.end method
