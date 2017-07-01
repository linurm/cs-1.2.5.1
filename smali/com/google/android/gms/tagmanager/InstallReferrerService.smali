.class public final Lcom/google/android/gms/tagmanager/InstallReferrerService;
.super Landroid/app/IntentService;


# instance fields
.field afQ:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field afR:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const-string v0, "InstallReferrerService"

    #@2
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->afQ:Lcom/google/android/gms/analytics/CampaignTrackingService;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/google/android/gms/analytics/CampaignTrackingService;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->afQ:Lcom/google/android/gms/analytics/CampaignTrackingService;

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->afQ:Lcom/google/android/gms/analytics/CampaignTrackingService;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/CampaignTrackingService;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    #@10
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    #@0
    const-string v0, "referrer"

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->afR:Landroid/content/Context;

    #@8
    if-eqz v0, :cond_13

    #@a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->afR:Landroid/content/Context;

    #@c
    :goto_c
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/ay;->d(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    #@12
    return-void

    #@13
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/InstallReferrerService;->getApplicationContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    goto :goto_c
.end method
