.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;,
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;",
        "Lcom/google/ads/mediation/customevent/CustomEventServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;",
        "Lcom/google/ads/mediation/customevent/CustomEventServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Landroid/view/View;

.field private o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

.field private p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;


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
    iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;

    #@2
    return-void
.end method

.method static synthetic a(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@6
    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->destroy()V

    #@9
    :cond_9
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@f
    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->destroy()V

    #@12
    :cond_12
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;",
            ">;"
        }
    .end annotation

    #@0
    const-class v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;

    #@2
    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->n:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/customevent/CustomEventServerParameters;",
            ">;"
        }
    .end annotation

    #@0
    const-class v0, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;

    #@2
    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 14

    #@0
    move-object v3, p3

    #@1
    check-cast v3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;

    #@3
    move-object v6, p6

    #@4
    check-cast v6, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v4, p4

    #@a
    move-object v5, p5

    #@b
    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;)V

    #@e
    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;)V
    .registers 15

    #@0
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->className:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@8
    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@a
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@c
    if-nez v0, :cond_14

    #@e
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@10
    invoke-interface {p1, p0, v0}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    if-nez p6, :cond_29

    #@16
    const/4 v7, 0x0

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->o:Lcom/google/ads/mediation/customevent/CustomEventBanner;

    #@19
    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;

    #@1b
    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V

    #@1e
    iget-object v3, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    #@20
    iget-object v4, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->parameter:Ljava/lang/String;

    #@22
    move-object v2, p2

    #@23
    move-object v5, p4

    #@24
    move-object v6, p5

    #@25
    invoke-interface/range {v0 .. v7}, Lcom/google/ads/mediation/customevent/CustomEventBanner;->requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V

    #@28
    goto :goto_13

    #@29
    :cond_29
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    #@2b
    invoke-virtual {p6, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    goto :goto_17
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 12

    #@0
    move-object v3, p3

    #@1
    check-cast v3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;

    #@3
    move-object v5, p5

    #@4
    check-cast v5, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move-object v4, p4

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;)V

    #@d
    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;)V
    .registers 13

    #@0
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->className:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@8
    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@a
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@c
    if-nez v0, :cond_14

    #@e
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@10
    invoke-interface {p1, p0, v0}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    if-nez p5, :cond_28

    #@16
    const/4 v6, 0x0

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@19
    new-instance v1, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;

    #@1b
    invoke-direct {v1, p0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V

    #@1e
    iget-object v3, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    #@20
    iget-object v4, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->parameter:Ljava/lang/String;

    #@22
    move-object v2, p2

    #@23
    move-object v5, p4

    #@24
    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V

    #@27
    goto :goto_13

    #@28
    :cond_28
    iget-object v0, p3, Lcom/google/ads/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    #@2a
    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    goto :goto_17
.end method

.method public showInterstitial()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->p:Lcom/google/ads/mediation/customevent/CustomEventInterstitial;

    #@2
    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    #@5
    return-void
.end method
