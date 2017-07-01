.class public final Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "InAppPurchaseActivity"


# instance fields
.field private tb:Lcom/google/android/gms/internal/dd;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/dd;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onActivityResult to in-app purchase manager:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    invoke-static {p0}, Lcom/google/android/gms/internal/di;->d(Landroid/app/Activity;)Lcom/google/android/gms/internal/dd;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@b
    if-nez v0, :cond_16

    #@d
    const-string v0, "Could not create in-app purchase manager."

    #@f
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@18
    invoke-interface {v0}, Lcom/google/android/gms/internal/dd;->onCreate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    #@1b
    goto :goto_15

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v1, "Could not forward onCreate to in-app purchase manager:"

    #@1f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    #@25
    goto :goto_15
.end method

.method protected onDestroy()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->tb:Lcom/google/android/gms/internal/dd;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/dd;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onDestroy to in-app purchase manager:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    goto :goto_9
.end method
