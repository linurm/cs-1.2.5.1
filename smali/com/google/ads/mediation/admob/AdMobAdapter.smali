.class public final Lcom/google/ads/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/admob/AdMobAdapter$a;,
        Lcom/google/ads/mediation/admob/AdMobAdapter$b;
    }
.end annotation


# instance fields
.field private i:Lcom/google/android/gms/ads/AdView;

.field private j:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    #@3
    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@f
    :cond_f
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_18

    #@15
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@18
    :cond_18
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_32

    #@1e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_32

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@31
    goto :goto_22

    #@32
    :cond_32
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3f

    #@38
    invoke-static {p0}, Lcom/google/android/gms/internal/et;->r(Landroid/content/Context;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@3f
    :cond_3f
    const-string v0, "tagForChildDirectedTreatment"

    #@41
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@44
    move-result v0

    #@45
    const/4 v3, -0x1

    #@46
    if-eq v0, v3, :cond_54

    #@48
    const-string v0, "tagForChildDirectedTreatment"

    #@4a
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@4d
    move-result v0

    #@4e
    if-ne v0, v1, :cond_8c

    #@50
    move v0, v1

    #@51
    :goto_51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@54
    :cond_54
    if-eqz p2, :cond_8e

    #@56
    :goto_56
    const-string v0, "gw"

    #@58
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@5b
    const-string v0, "mad_hac"

    #@5d
    const-string v3, "mad_hac"

    #@5f
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    const-string v0, "adJson"

    #@68
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6f
    move-result v0

    #@70
    if-nez v0, :cond_7d

    #@72
    const-string v0, "_ad"

    #@74
    const-string v3, "adJson"

    #@76
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    :cond_7d
    const-string v0, "_noRefresh"

    #@7f
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@82
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@84
    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    #@87
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    #@8a
    move-result-object v0

    #@8b
    return-object v0

    #@8c
    :cond_8c
    const/4 v0, 0x0

    #@8d
    goto :goto_51

    #@8e
    :cond_8e
    new-instance p2, Landroid/os/Bundle;

    #@90
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@93
    goto :goto_56
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@2
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@3
    if-eqz v0, :cond_c

    #@5
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    #@a
    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@e
    if-eqz v0, :cond_12

    #@10
    iput-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@12
    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    #@9
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    #@9
    :cond_9
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 11

    #@0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    #@5
    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@7
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@9
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    #@b
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    #@12
    move-result v3

    #@13
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    #@16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    #@19
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@1b
    const-string v1, "pubid"

    #@1d
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    #@24
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@26
    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$a;

    #@28
    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/admob/AdMobAdapter$a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    #@2b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    #@2e
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/ads/AdView;

    #@30
    invoke-static {p1, p5, p6, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    #@37
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 8

    #@0
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    #@5
    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@7
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@9
    const-string v1, "pubid"

    #@b
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    #@12
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@14
    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter$b;

    #@16
    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/admob/AdMobAdapter$b;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    #@19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    #@1c
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@1e
    invoke-static {p1, p4, p5, p3}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    #@25
    return-void
.end method

.method public showInterstitial()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;->j:Lcom/google/android/gms/ads/InterstitialAd;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    #@5
    return-void
.end method
