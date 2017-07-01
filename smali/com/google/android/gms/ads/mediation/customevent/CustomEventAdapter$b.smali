.class Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private final sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

.field final synthetic sZ:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sZ:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@9
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onAdClicked."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onAdClosed()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onAdClosed."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    #@c
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onAdLeftApplication."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onReceivedAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sZ:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onAdOpened."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->m:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method
