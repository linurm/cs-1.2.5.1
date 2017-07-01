.class public final Lcom/google/android/gms/internal/au;
.super Ljava/lang/Object;


# instance fields
.field private lQ:Lcom/google/android/gms/ads/AdListener;

.field private mA:Landroid/view/ViewGroup;

.field private mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private mi:[Lcom/google/android/gms/ads/AdSize;

.field private mj:Ljava/lang/String;

.field private final mw:Lcom/google/android/gms/internal/bs;

.field private final mx:Lcom/google/android/gms/internal/ak;

.field private my:Lcom/google/android/gms/internal/aq;

.field private mz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Lcom/google/android/gms/internal/ak;->aF()Lcom/google/android/gms/internal/ak;

    #@5
    move-result-object v2

    #@6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/au;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ak;)V

    #@9
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 5

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ak;->aF()Lcom/google/android/gms/internal/ak;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/au;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ak;)V

    #@7
    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ak;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/bs;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/internal/bs;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mw:Lcom/google/android/gms/internal/bs;

    #@a
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@c
    iput-object p4, p0, Lcom/google/android/gms/internal/au;->mx:Lcom/google/android/gms/internal/ak;

    #@e
    if-eqz p2, :cond_3a

    #@10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    :try_start_14
    new-instance v0, Lcom/google/android/gms/internal/ao;

    #@16
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ao;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@19
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ao;->f(Z)[Lcom/google/android/gms/ads/AdSize;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ao;->getAdUnitId()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_25} :catch_3b

    #@25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3a

    #@2b
    new-instance v0, Lcom/google/android/gms/internal/al;

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2f
    const/4 v3, 0x0

    #@30
    aget-object v2, v2, v3

    #@32
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    #@35
    const-string v1, "Ads by Google"

    #@37
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/et;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;)V

    #@3a
    :cond_3a
    :goto_3a
    return-void

    #@3b
    :catch_3b
    move-exception v0

    #@3c
    new-instance v2, Lcom/google/android/gms/internal/al;

    #@3e
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    #@40
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    #@43
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/et;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/al;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    goto :goto_3a
.end method

.method private aL()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->U()Lcom/google/android/gms/dynamic/d;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@b
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/View;

    #@11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    goto :goto_8

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v1, "Failed to get an ad frame."

    #@18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    goto :goto_8
.end method

.method private aM()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2
    if-eqz v0, :cond_8

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;

    #@6
    if-nez v0, :cond_14

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@a
    if-nez v0, :cond_14

    #@c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@1e
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    #@21
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;

    #@23
    iget-object v3, p0, Lcom/google/android/gms/internal/au;->mw:Lcom/google/android/gms/internal/bs;

    #@25
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ah;->a(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/aq;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2d
    if-eqz v0, :cond_3b

    #@2f
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@31
    new-instance v1, Lcom/google/android/gms/internal/ag;

    #@33
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@35
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    #@38
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ap;)V

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@3d
    if-eqz v0, :cond_4b

    #@3f
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@41
    new-instance v1, Lcom/google/android/gms/internal/an;

    #@43
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@45
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    #@48
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/as;)V

    #@4b
    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@4d
    if-eqz v0, :cond_5b

    #@4f
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@51
    new-instance v1, Lcom/google/android/gms/internal/dh;

    #@53
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@55
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    #@58
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dc;)V

    #@5b
    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@5d
    if-eqz v0, :cond_6d

    #@5f
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@61
    new-instance v1, Lcom/google/android/gms/internal/dl;

    #@63
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@65
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dl;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    #@68
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mz:Ljava/lang/String;

    #@6a
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V

    #@6d
    :cond_6d
    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->aL()V

    #@70
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/at;)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/internal/au;->aM()V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->mx:Lcom/google/android/gms/internal/ak;

    #@b
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ak;->a(Landroid/content/Context;Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/internal/ai;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ai;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_24

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mw:Lcom/google/android/gms/internal/bs;

    #@1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/at;->aI()Ljava/util/Map;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bs;->c(Ljava/util/Map;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    #@24
    :cond_24
    :goto_24
    return-void

    #@25
    :catch_25
    move-exception v0

    #@26
    const-string v1, "Failed to load ad."

    #@28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    goto :goto_24
.end method

.method public varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_18

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@8
    new-instance v1, Lcom/google/android/gms/internal/al;

    #@a
    iget-object v2, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@c
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@12
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    #@15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/al;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_1e

    #@18
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mA:Landroid/view/ViewGroup;

    #@1a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    #@1d
    return-void

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    const-string v1, "Failed to set the ad size."

    #@21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    goto :goto_18
.end method

.method public destroy()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v1, "Failed to destroy AdView."

    #@d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    goto :goto_9
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->V()Lcom/google/android/gms/internal/al;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->aG()Lcom/google/android/gms/ads/AdSize;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v1, "Failed to get the current AdSize."

    #@12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@17
    if-eqz v0, :cond_1f

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@1b
    const/4 v1, 0x0

    #@1c
    aget-object v0, v0, v1

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    goto :goto_e
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2
    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@2
    return-object v0
.end method

.method public pause()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v1, "Failed to call pause."

    #@d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    goto :goto_9
.end method

.method public recordManualImpression()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->ag()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Failed to record impression."

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5
.end method

.method public resume()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v1, "Failed to call resume."

    #@d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    goto :goto_9
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    #@0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

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

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mi:[Lcom/google/android/gms/ads/AdSize;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "The ad size can only be set once on AdView."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/au;->a([Lcom/google/android/gms/ads/AdSize;)V

    #@f
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "The ad unit ID can only be set once on AdView."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mj:Ljava/lang/String;

    #@e
    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    #@0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mh:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

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
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@10
    if-eqz v0, :cond_1e

    #@12
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "InAppPurchaseListener has already been set."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/au;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@e
    iput-object p2, p0, Lcom/google/android/gms/internal/au;->mz:Ljava/lang/String;

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@12
    if-eqz v0, :cond_20

    #@14
    iget-object v1, p0, Lcom/google/android/gms/internal/au;->my:Lcom/google/android/gms/internal/aq;

    #@16
    if-eqz p1, :cond_21

    #@18
    new-instance v0, Lcom/google/android/gms/internal/dl;

    #@1a
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dl;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    #@1d
    :goto_1d
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_23

    #@20
    :cond_20
    :goto_20
    return-void

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    goto :goto_1d

    #@23
    :catch_23
    move-exception v0

    #@24
    const-string v1, "Failed to set the play store purchase parameter."

    #@26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    goto :goto_20
.end method
