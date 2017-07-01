.class public final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;,
        Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;
    }
.end annotation


# instance fields
.field private n:Landroid/view/View;

.field private sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

.field private sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    #@7
    move-result-object v0

    #@8
    :goto_8
    return-object v0

    #@9
    :catch_9
    move-exception v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Could not instantiate custom event adapter: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, ". "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@2e
    const/4 v0, 0x0

    #@2f
    goto :goto_8
.end method

.method private a(Landroid/view/View;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;

    #@2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onDestroy()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@f
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onDestroy()V

    #@12
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onPause()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@f
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onPause()V

    #@12
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->onResume()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@f
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->onResume()V

    #@12
    :cond_12
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 14

    #@0
    const-string v0, "class_name"

    #@2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@c
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@10
    if-nez v0, :cond_17

    #@12
    const/4 v0, 0x0

    #@13
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    if-nez p6, :cond_2e

    #@19
    const/4 v6, 0x0

    #@1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sW:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    #@1c
    new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;

    #@1e
    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    #@21
    const-string v1, "parameter"

    #@23
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    move-object v1, p1

    #@28
    move-object v4, p4

    #@29
    move-object v5, p5

    #@2a
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    #@2d
    goto :goto_16

    #@2e
    :cond_2e
    const-string v0, "class_name"

    #@30
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@37
    move-result-object v6

    #@38
    goto :goto_1a
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 12

    #@0
    const-string v0, "class_name"

    #@2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@c
    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@10
    if-nez v0, :cond_17

    #@12
    const/4 v0, 0x0

    #@13
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    if-nez p5, :cond_2d

    #@19
    const/4 v5, 0x0

    #@1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@1c
    new-instance v2, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;

    #@1e
    invoke-direct {v2, p0, p0, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    #@21
    const-string v1, "parameter"

    #@23
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    move-object v1, p1

    #@28
    move-object v4, p4

    #@29
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    #@2c
    goto :goto_16

    #@2d
    :cond_2d
    const-string v0, "class_name"

    #@2f
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@36
    move-result-object v5

    #@37
    goto :goto_1a
.end method

.method public showInterstitial()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->sX:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    #@5
    return-void
.end method
