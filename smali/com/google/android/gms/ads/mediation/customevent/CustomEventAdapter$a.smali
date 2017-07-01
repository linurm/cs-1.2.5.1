.class final Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private final sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
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
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

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
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    #@0
    const-string v0, "Custom event adapter called onAdFailedToLoad."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

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
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method

.method public onAdLoaded(Landroid/view/View;)V
    .registers 4

    #@0
    const-string v0, "Custom event adapter called onAdLoaded."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@7
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;->a(Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@c
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@e
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@11
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    #@0
    const-string v0, "Custom event adapter called onAdOpened."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->l:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    #@7
    iget-object v1, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a;->sY:Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    #@9
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    #@c
    return-void
.end method
