.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final ky:Lcom/google/android/gms/internal/av;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/av;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/av;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@a
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdUnitId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->isLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->T()Lcom/google/android/gms/internal/at;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/at;)V

    #@9
    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    #@5
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdUnitId(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    #@5
    return-void
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/av;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public show()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->show()V

    #@5
    return-void
.end method
