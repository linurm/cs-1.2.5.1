.class public final Lcom/google/android/gms/internal/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerListener;",
        "Lcom/google/ads/mediation/MediationInterstitialListener;"
    }
.end annotation


# instance fields
.field private final nT:Lcom/google/android/gms/internal/bv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bv;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ca;)Lcom/google/android/gms/internal/bv;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@2
    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onClick."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onClick must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$1;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$1;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdClicked()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdClicked."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onDismissScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onDismissScreen must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$4;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$4;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdClosed()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdClosed."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onDismissScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onDismissScreen must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$9;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$9;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdClosed()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdClosed."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@16
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_2c

    #@1c
    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@21
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@23
    new-instance v1, Lcom/google/android/gms/internal/ca$5;

    #@25
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ca$5;-><init>(Lcom/google/android/gms/internal/ca;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2b
    :goto_2b
    return-void

    #@2c
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@2e
    invoke-static {p2}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    #@31
    move-result v1

    #@32
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bv;->onAdFailedToLoad(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    #@35
    goto :goto_2b

    #@36
    :catch_36
    move-exception v0

    #@37
    const-string v1, "Could not call onAdFailedToLoad."

    #@39
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    goto :goto_2b
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Adapter called onFailedToReceiveAd with error "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "."

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@1c
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_32

    #@22
    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    #@24
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@27
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@29
    new-instance v1, Lcom/google/android/gms/internal/ca$10;

    #@2b
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ca$10;-><init>(Lcom/google/android/gms/internal/ca;Lcom/google/ads/AdRequest$ErrorCode;)V

    #@2e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@31
    :goto_31
    return-void

    #@32
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@34
    invoke-static {p2}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    #@37
    move-result v1

    #@38
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bv;->onAdFailedToLoad(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    #@3b
    goto :goto_31

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    const-string v1, "Could not call onAdFailedToLoad."

    #@3f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    goto :goto_31
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onLeaveApplication."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onLeaveApplication must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$6;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$6;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdLeftApplication()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdLeftApplication."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onLeaveApplication."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onLeaveApplication must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$11;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$11;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdLeftApplication()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdLeftApplication."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onPresentScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onPresentScreen must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$7;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$7;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdOpened()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdOpened."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onPresentScreen."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onPresentScreen must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$2;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$2;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdOpened()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdOpened."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onReceivedAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onReceivedAd must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$8;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$8;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdLoaded()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdLoaded."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    #@0
    const-string v0, "Adapter called onReceivedAd."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    invoke-static {}, Lcom/google/android/gms/internal/et;->bW()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1b

    #@b
    const-string v0, "onReceivedAd must be called on the main UI thread."

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@10
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@12
    new-instance v1, Lcom/google/android/gms/internal/ca$3;

    #@14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ca$3;-><init>(Lcom/google/android/gms/internal/ca;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->nT:Lcom/google/android/gms/internal/bv;

    #@1d
    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->onAdLoaded()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    #@20
    goto :goto_1a

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "Could not call onAdLoaded."

    #@24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    goto :goto_1a
.end method
