.class final Lcom/google/ads/mediation/admob/AdMobAdapter$b;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final k:Lcom/google/ads/mediation/admob/AdMobAdapter;

.field private final m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@5
    iput-object p2, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@7
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    #@7
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@7
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@7
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$b;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@7
    return-void
.end method
