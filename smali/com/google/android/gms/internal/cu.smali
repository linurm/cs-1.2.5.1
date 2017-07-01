.class public Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/internal/dd$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private oX:Lcom/google/android/gms/internal/dg;

.field private oY:Lcom/google/android/gms/internal/cr;

.field private final oZ:Lcom/google/android/gms/internal/cx;

.field private final og:Landroid/app/Activity;

.field private pb:Lcom/google/android/gms/internal/cz;

.field private ph:Landroid/content/Context;

.field private pi:Lcom/google/android/gms/internal/db;

.field private pj:Lcom/google/android/gms/internal/cv;

.field private pk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/dd$a;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@6
    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@a
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/cx;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->oZ:Lcom/google/android/gms/internal/cx;

    #@14
    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/google/android/gms/internal/cq;)V
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    const-string v1, "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    #@a
    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@f
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cq;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/cq;)V

    #@12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@15
    return-void
.end method

.method private a(Ljava/lang/String;ZILandroid/content/Intent;)V
    .registers 13

    #@0
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/cu;->oX:Lcom/google/android/gms/internal/dg;

    #@2
    new-instance v0, Lcom/google/android/gms/internal/cw;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->ph:Landroid/content/Context;

    #@6
    iget-object v6, p0, Lcom/google/android/gms/internal/cu;->pj:Lcom/google/android/gms/internal/cv;

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move-object v5, p4

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/cw;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cv;)V

    #@f
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/df;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "Fail to invoke PlayStorePurchaseListener."

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@19
    goto :goto_12
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    const/16 v0, 0x3e9

    #@3
    if-ne p1, v0, :cond_2e

    #@5
    :try_start_5
    invoke-static {p3}, Lcom/google/android/gms/internal/cy;->c(Landroid/content/Intent;)I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    if-ne p2, v1, :cond_48

    #@c
    if-nez v0, :cond_48

    #@e
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pb:Lcom/google/android/gms/internal/cz;

    #@10
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@12
    invoke-virtual {v1, v2, p2, p3}, Lcom/google/android/gms/internal/cz;->a(Ljava/lang/String;ILandroid/content/Intent;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2f

    #@18
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@1a
    invoke-interface {v1}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    const/4 v2, 0x1

    #@1f
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cu;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    #@22
    :goto_22
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@24
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/db;->recordPlayBillingResolution(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_27} :catch_3a
    .catchall {:try_start_5 .. :try_end_27} :catchall_5a

    #@27
    iput-object v3, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@29
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@2b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@2e
    :cond_2e
    :goto_2e
    return-void

    #@2f
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@31
    invoke-interface {v1}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    const/4 v2, 0x0

    #@36
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cu;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_39} :catch_3a
    .catchall {:try_start_2f .. :try_end_39} :catchall_5a

    #@39
    goto :goto_22

    #@3a
    :catch_3a
    move-exception v0

    #@3b
    :try_start_3b
    const-string v0, "Fail to process purchase result."

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_5a

    #@40
    iput-object v3, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@42
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@44
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@47
    goto :goto_2e

    #@48
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->oZ:Lcom/google/android/gms/internal/cx;

    #@4a
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->pj:Lcom/google/android/gms/internal/cv;

    #@4c
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cv;)V

    #@4f
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@51
    invoke-interface {v1}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    const/4 v2, 0x0

    #@56
    invoke-direct {p0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/cu;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_59} :catch_3a
    .catchall {:try_start_48 .. :try_end_59} :catchall_5a

    #@59
    goto :goto_22

    #@5a
    :catchall_5a
    move-exception v0

    #@5b
    iput-object v3, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@5d
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@5f
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@62
    throw v0
.end method

.method public onCreate()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/cq;->b(Landroid/content/Intent;)Lcom/google/android/gms/internal/cq;

    #@9
    move-result-object v0

    #@a
    iget-object v1, v0, Lcom/google/android/gms/internal/cq;->kX:Lcom/google/android/gms/internal/dg;

    #@c
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->oX:Lcom/google/android/gms/internal/dg;

    #@e
    iget-object v1, v0, Lcom/google/android/gms/internal/cq;->kZ:Lcom/google/android/gms/internal/cz;

    #@10
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->pb:Lcom/google/android/gms/internal/cz;

    #@12
    iget-object v1, v0, Lcom/google/android/gms/internal/cq;->oT:Lcom/google/android/gms/internal/db;

    #@14
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@16
    new-instance v1, Lcom/google/android/gms/internal/cr;

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@1a
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;)V

    #@21
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->oY:Lcom/google/android/gms/internal/cr;

    #@23
    iget-object v0, v0, Lcom/google/android/gms/internal/cq;->oU:Landroid/content/Context;

    #@25
    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->ph:Landroid/content/Context;

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@29
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    #@2d
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@30
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@32
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@39
    return-void
.end method

.method public onDestroy()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->oY:Lcom/google/android/gms/internal/cr;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@a
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->oY:Lcom/google/android/gms/internal/cr;

    #@2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/cr;->o(Landroid/os/IBinder;)V

    #@5
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->pb:Lcom/google/android/gms/internal/cz;

    #@7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cz;->bm()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->oY:Lcom/google/android/gms/internal/cr;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@11
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@17
    invoke-interface {v3}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    #@20
    move-result-object v3

    #@21
    const-string v1, "BUY_INTENT"

    #@23
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@26
    move-result-object v1

    #@27
    move-object v0, v1

    #@28
    check-cast v0, Landroid/app/PendingIntent;

    #@2a
    move-object v2, v0

    #@2b
    if-nez v2, :cond_47

    #@2d
    invoke-static {v3}, Lcom/google/android/gms/internal/cy;->a(Landroid/os/Bundle;)I

    #@30
    move-result v1

    #@31
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@33
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/db;->recordPlayBillingResolution(I)V

    #@36
    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@38
    invoke-interface {v2}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/cu;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    #@41
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@43
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@46
    :goto_46
    return-void

    #@47
    :cond_47
    new-instance v1, Lcom/google/android/gms/internal/cv;

    #@49
    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->pi:Lcom/google/android/gms/internal/db;

    #@4b
    invoke-interface {v3}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->pk:Ljava/lang/String;

    #@51
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->pj:Lcom/google/android/gms/internal/cv;

    #@56
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->oZ:Lcom/google/android/gms/internal/cx;

    #@58
    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->pj:Lcom/google/android/gms/internal/cv;

    #@5a
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cx;->b(Lcom/google/android/gms/internal/cv;)V

    #@5d
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@5f
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@62
    move-result-object v2

    #@63
    new-instance v4, Landroid/content/Intent;

    #@65
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@68
    const/16 v3, 0x3e9

    #@6a
    const/4 v5, 0x0

    #@6b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@72
    move-result v5

    #@73
    const/4 v6, 0x0

    #@74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@7b
    move-result v6

    #@7c
    const/4 v7, 0x0

    #@7d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@84
    move-result v7

    #@85
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_88} :catch_89
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_88} :catch_95

    #@88
    goto :goto_46

    #@89
    :catch_89
    move-exception v1

    #@8a
    :goto_8a
    const-string v2, "Error when connecting in-app billing service"

    #@8c
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->og:Landroid/app/Activity;

    #@91
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    #@94
    goto :goto_46

    #@95
    :catch_95
    move-exception v1

    #@96
    goto :goto_8a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    #@0
    const-string v0, "In-app billing service disconnected."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->oY:Lcom/google/android/gms/internal/cr;

    #@7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->destroy()V

    #@a
    return-void
.end method
