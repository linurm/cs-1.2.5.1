.class final Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final r:Lcom/google/ads/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@5
    iput-object p2, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method

.method public onDismissScreen()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

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
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    #@b
    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@e
    return-void
.end method

.method public onLeaveApplication()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method

.method public onPresentScreen()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method

.method public onReceivedAd(Landroid/view/View;)V
    .registers 4

    #@0
    const-string v0, "Custom event adapter called onReceivedAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@7
    invoke-static {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V

    #@a
    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->r:Lcom/google/ads/mediation/MediationBannerListener;

    #@c
    iget-object v1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;->q:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    #@e
    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    #@11
    return-void
.end method
