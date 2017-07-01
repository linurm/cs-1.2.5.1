.class public Lcom/google/android/gms/analytics/CampaignTrackingService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const-string v0, "CampaignIntentService"

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


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    #@0
    invoke-virtual {p0, p0, p1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method public processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    #@0
    const-string v0, "referrer"

    #@2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    :try_start_6
    const-string v1, "gaInstallData"

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    #@14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@17
    const-string v0, "Stored campaign information."

    #@19
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_1d

    #@1c
    :goto_1c
    return-void

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    const-string v0, "Error storing install campaign."

    #@20
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@23
    goto :goto_1c
.end method
