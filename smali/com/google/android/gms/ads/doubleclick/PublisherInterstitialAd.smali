.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
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
    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@a
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAdUnitId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->isLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->T()Lcom/google/android/gms/internal/at;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    #@5
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAdUnitId(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/av;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    #@5
    return-void
.end method

.method public show()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->ky:Lcom/google/android/gms/internal/av;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->show()V

    #@5
    return-void
.end method
