.class public final Lcom/google/android/gms/internal/bx;
.super Lcom/google/android/gms/internal/bu$a;


# instance fields
.field private final nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bu$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@5
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Server parameters: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@16
    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    #@18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1b
    if-eqz p1, :cond_4c

    #@1d
    new-instance v2, Lorg/json/JSONObject;

    #@1f
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@22
    new-instance v1, Landroid/os/Bundle;

    #@24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@27
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_4b

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/String;

    #@37
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_3e} :catch_3f

    #@3e
    goto :goto_2b

    #@3f
    :catch_3f
    move-exception v0

    #@40
    const-string v1, "Could not get Server Parameters Bundle."

    #@42
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    new-instance v0, Landroid/os/RemoteException;

    #@47
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@4a
    throw v0

    #@4b
    :cond_4b
    move-object v0, v1

    #@4c
    :cond_4c
    :try_start_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@4e
    instance-of v1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@50
    if-eqz v1, :cond_5c

    #@52
    const-string v1, "adJson"

    #@54
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@57
    const-string v1, "tagForChildDirectedTreatment"

    #@59
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_5c} :catch_3f

    #@5c
    :cond_5c
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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bx;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@9
    return-void
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v8, 0x0

    #@1
    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@3
    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    #@5
    if-nez v2, :cond_2d

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v3, "MediationAdapter is not a MediationInterstitialAdapter: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@27
    new-instance v2, Landroid/os/RemoteException;

    #@29
    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    #@2c
    throw v2

    #@2d
    :cond_2d
    const-string v2, "Requesting interstitial ad from adapter."

    #@2f
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@32
    :try_start_32
    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@34
    move-object v0, v2

    #@35
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    #@37
    move-object v9, v0

    #@38
    iget-object v2, p2, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@3a
    if-eqz v2, :cond_7e

    #@3c
    new-instance v5, Ljava/util/HashSet;

    #@3e
    iget-object v2, p2, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@40
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@43
    :goto_43
    new-instance v2, Lcom/google/android/gms/internal/bw;

    #@45
    new-instance v3, Ljava/util/Date;

    #@47
    iget-wide v6, p2, Lcom/google/android/gms/internal/ai;->lS:J

    #@49
    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@4c
    iget v4, p2, Lcom/google/android/gms/internal/ai;->lT:I

    #@4e
    iget-boolean v6, p2, Lcom/google/android/gms/internal/ai;->lV:Z

    #@50
    iget v7, p2, Lcom/google/android/gms/internal/ai;->lW:I

    #@52
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/bw;-><init>(Ljava/util/Date;ILjava/util/Set;ZI)V

    #@55
    iget-object v3, p2, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@57
    if-eqz v3, :cond_67

    #@59
    iget-object v3, p2, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@5b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@66
    move-result-object v8

    #@67
    :cond_67
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    check-cast v4, Landroid/content/Context;

    #@6d
    new-instance v5, Lcom/google/android/gms/internal/by;

    #@6f
    invoke-direct {v5, p5}, Lcom/google/android/gms/internal/by;-><init>(Lcom/google/android/gms/internal/bv;)V

    #@72
    iget v3, p2, Lcom/google/android/gms/internal/ai;->lW:I

    #@74
    invoke-direct {p0, p3, v3, p4}, Lcom/google/android/gms/internal/bx;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    #@77
    move-result-object v6

    #@78
    move-object v3, v9

    #@79
    move-object v7, v2

    #@7a
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_7d} :catch_80

    #@7d
    return-void

    #@7e
    :cond_7e
    move-object v5, v8

    #@7f
    goto :goto_43

    #@80
    :catch_80
    move-exception v2

    #@81
    const-string v3, "Could not request interstitial ad from adapter."

    #@83
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@86
    new-instance v2, Landroid/os/RemoteException;

    #@88
    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    #@8b
    throw v2
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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bx;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@a
    return-void
.end method

.method public a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v9, 0x0

    #@1
    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@3
    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    #@5
    if-nez v2, :cond_2d

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v3, "MediationAdapter is not a MediationBannerAdapter: "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@27
    new-instance v2, Landroid/os/RemoteException;

    #@29
    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    #@2c
    throw v2

    #@2d
    :cond_2d
    const-string v2, "Requesting banner ad from adapter."

    #@2f
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@32
    :try_start_32
    iget-object v2, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@34
    move-object v0, v2

    #@35
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    #@37
    move-object v8, v0

    #@38
    iget-object v2, p3, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@3a
    if-eqz v2, :cond_8c

    #@3c
    new-instance v5, Ljava/util/HashSet;

    #@3e
    iget-object v2, p3, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@40
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@43
    :goto_43
    new-instance v2, Lcom/google/android/gms/internal/bw;

    #@45
    new-instance v3, Ljava/util/Date;

    #@47
    iget-wide v6, p3, Lcom/google/android/gms/internal/ai;->lS:J

    #@49
    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@4c
    iget v4, p3, Lcom/google/android/gms/internal/ai;->lT:I

    #@4e
    iget-boolean v6, p3, Lcom/google/android/gms/internal/ai;->lV:Z

    #@50
    iget v7, p3, Lcom/google/android/gms/internal/ai;->lW:I

    #@52
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/bw;-><init>(Ljava/util/Date;ILjava/util/Set;ZI)V

    #@55
    iget-object v3, p3, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@57
    if-eqz v3, :cond_67

    #@59
    iget-object v3, p3, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@5b
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@66
    move-result-object v9

    #@67
    :cond_67
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    check-cast v4, Landroid/content/Context;

    #@6d
    new-instance v5, Lcom/google/android/gms/internal/by;

    #@6f
    move-object/from16 v0, p6

    #@71
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/by;-><init>(Lcom/google/android/gms/internal/bv;)V

    #@74
    iget v3, p3, Lcom/google/android/gms/internal/ai;->lW:I

    #@76
    move-object/from16 v0, p5

    #@78
    invoke-direct {p0, p4, v3, v0}, Lcom/google/android/gms/internal/bx;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    #@7b
    move-result-object v6

    #@7c
    iget v3, p2, Lcom/google/android/gms/internal/al;->width:I

    #@7e
    iget v7, p2, Lcom/google/android/gms/internal/al;->height:I

    #@80
    iget-object v10, p2, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@82
    invoke-static {v3, v7, v10}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    #@85
    move-result-object v7

    #@86
    move-object v3, v8

    #@87
    move-object v8, v2

    #@88
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_8b} :catch_8e

    #@8b
    return-void

    #@8c
    :cond_8c
    move-object v5, v9

    #@8d
    goto :goto_43

    #@8e
    :catch_8e
    move-exception v2

    #@8f
    const-string v3, "Could not request banner ad from adapter."

    #@91
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@94
    new-instance v2, Landroid/os/RemoteException;

    #@96
    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    #@99
    throw v2
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
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2e
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    #@30
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not pause adapter."

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    new-instance v0, Landroid/os/RemoteException;

    #@e
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@11
    throw v0
.end method

.method public resume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not resume adapter."

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    new-instance v0, Landroid/os/RemoteException;

    #@e
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@11
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
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@2
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->nS:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    #@33
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    #@35
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
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
