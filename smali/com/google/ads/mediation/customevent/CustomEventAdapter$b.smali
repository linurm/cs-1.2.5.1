.class Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final s:Lcom/google/ads/mediation/MediationInterstitialListener;

.field final synthetic t:Lcom/google/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->t:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@7
    iput-object p3, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@9
    return-void
.end method


# virtual methods
.method public onDismissScreen()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onDismissScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onFailedToReceiveAd()V
    .registers 4

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    #@b
    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@e
    return-void
.end method

.method public onLeaveApplication()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onLeaveApplication."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onPresentScreen()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onPresentScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method

.method public onReceivedAd()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onReceivedAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->s:Lcom/google/ads/mediation/MediationInterstitialListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;->t:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    #@c
    return-void
.end method
