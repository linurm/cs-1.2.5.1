.class final Lcom/google/ads/mediation/admob/AdMobAdapter$a;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final k:Lcom/google/ads/mediation/admob/AdMobAdapter;

.field private final l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@5
    iput-object p2, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@7
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    #@7
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@7
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@7
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@2
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@7
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@9
    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->k:Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@e
    return-void
.end method
