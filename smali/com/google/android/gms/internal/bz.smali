.class public final Lcom/google/android/gms/internal/bz;
.super Lcom/google/android/gms/internal/bu$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Lcom/google/android/gms/internal/bu$a;"
    }
.end annotation


# instance fields
.field private final nU:Lcom/google/ads/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/MediationAdapter",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field private final nV:Lcom/google/ads/mediation/NetworkExtras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/MediationAdapter;Lcom/google/ads/mediation/NetworkExtras;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationAdapter",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bu$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/bz;->nV:Lcom/google/ads/mediation/NetworkExtras;

    #@7
    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_34

    #@2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    #@4
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@7
    new-instance v1, Ljava/util/HashMap;

    #@9
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    #@c
    move-result v0

    #@d
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    #@10
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_3b

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28

    #@27
    goto :goto_14

    #@28
    :catch_28
    move-exception v0

    #@29
    const-string v1, "Could not get MediationServerParameters."

    #@2b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    new-instance v0, Landroid/os/RemoteException;

    #@30
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@33
    throw v0

    #@34
    :cond_34
    :try_start_34
    new-instance v0, Ljava/util/HashMap;

    #@36
    const/4 v1, 0x0

    #@37
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@3a
    move-object v1, v0

    #@3b
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@3d
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->getServerParametersType()Ljava/lang/Class;

    #@40
    move-result-object v2

    #@41
    const/4 v0, 0x0

    #@42
    if-eqz v2, :cond_4d

    #@44
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters;

    #@4a
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters;->load(Ljava/util/Map;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4d} :catch_28

    #@4d
    :cond_4d
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bz;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@9
    return-void
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    #@4
    if-nez v0, :cond_2c

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@26
    new-instance v0, Landroid/os/RemoteException;

    #@28
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@2b
    throw v0

    #@2c
    :cond_2c
    const-string v0, "Requesting interstitial ad from adapter."

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@33
    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    #@35
    new-instance v1, Lcom/google/android/gms/internal/ca;

    #@37
    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/bv;)V

    #@3a
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/app/Activity;

    #@40
    iget v3, p2, Lcom/google/android/gms/internal/ai;->lW:I

    #@42
    invoke-direct {p0, p3, v3, p4}, Lcom/google/android/gms/internal/bz;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    #@45
    move-result-object v3

    #@46
    invoke-static {p2}, Lcom/google/android/gms/internal/cb;->e(Lcom/google/android/gms/internal/ai;)Lcom/google/ads/mediation/MediationAdRequest;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p0, Lcom/google/android/gms/internal/bz;->nV:Lcom/google/ads/mediation/NetworkExtras;

    #@4c
    invoke-interface/range {v0 .. v5}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4f} :catch_50

    #@4f
    return-void

    #@50
    :catch_50
    move-exception v0

    #@51
    const-string v1, "Could not request interstitial ad from adapter."

    #@53
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@56
    new-instance v0, Landroid/os/RemoteException;

    #@58
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@5b
    throw v0
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v6, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bz;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@a
    return-void
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    #@4
    if-nez v0, :cond_2c

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@26
    new-instance v0, Landroid/os/RemoteException;

    #@28
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@2b
    throw v0

    #@2c
    :cond_2c
    const-string v0, "Requesting banner ad from adapter."

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@33
    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    #@35
    new-instance v1, Lcom/google/android/gms/internal/ca;

    #@37
    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/bv;)V

    #@3a
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/app/Activity;

    #@40
    iget v3, p3, Lcom/google/android/gms/internal/ai;->lW:I

    #@42
    invoke-direct {p0, p4, v3, p5}, Lcom/google/android/gms/internal/bz;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    #@45
    move-result-object v3

    #@46
    invoke-static {p2}, Lcom/google/android/gms/internal/cb;->b(Lcom/google/android/gms/internal/al;)Lcom/google/ads/AdSize;

    #@49
    move-result-object v4

    #@4a
    invoke-static {p3}, Lcom/google/android/gms/internal/cb;->e(Lcom/google/android/gms/internal/ai;)Lcom/google/ads/mediation/MediationAdRequest;

    #@4d
    move-result-object v5

    #@4e
    iget-object v6, p0, Lcom/google/android/gms/internal/bz;->nV:Lcom/google/ads/mediation/NetworkExtras;

    #@50
    invoke-interface/range {v0 .. v6}, Lcom/google/ads/mediation/MediationBannerAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_53} :catch_54

    #@53
    return-void

    #@54
    :catch_54
    move-exception v0

    #@55
    const-string v1, "Could not request banner ad from adapter."

    #@57
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    new-instance v0, Landroid/os/RemoteException;

    #@5c
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@5f
    throw v0
.end method

.method public destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->destroy()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not destroy adapter."

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    new-instance v0, Landroid/os/RemoteException;

    #@e
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@11
    throw v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    #@4
    if-nez v0, :cond_2c

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@26
    new-instance v0, Landroid/os/RemoteException;

    #@28
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@2b
    throw v0

    #@2c
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2e
    check-cast v0, Lcom/google/ads/mediation/MediationBannerAdapter;

    #@30
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_39

    #@37
    move-result-object v0

    #@38
    return-object v0

    #@39
    :catch_39
    move-exception v0

    #@3a
    const-string v1, "Could not get banner view from adapter."

    #@3c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    new-instance v0, Landroid/os/RemoteException;

    #@41
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@44
    throw v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/RemoteException;

    #@2
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@5
    throw v0
.end method

.method public resume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Landroid/os/RemoteException;

    #@2
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@5
    throw v0
.end method

.method public showInterstitial()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    #@4
    if-nez v0, :cond_2c

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@26
    new-instance v0, Landroid/os/RemoteException;

    #@28
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@2b
    throw v0

    #@2c
    :cond_2c
    const-string v0, "Showing interstitial from adapter."

    #@2e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->nU:Lcom/google/ads/mediation/MediationAdapter;

    #@33
    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    #@35
    invoke-interface {v0}, Lcom/google/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_38} :catch_39

    #@38
    return-void

    #@39
    :catch_39
    move-exception v0

    #@3a
    const-string v1, "Could not show interstitial from adapter."

    #@3c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    new-instance v0, Landroid/os/RemoteException;

    #@41
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@44
    throw v0
.end method
