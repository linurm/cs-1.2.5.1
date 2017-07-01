.class public Lcom/google/android/gms/internal/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/purchase/InAppPurchaseResult;


# instance fields
.field private final pw:Lcom/google/android/gms/internal/df;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/df;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@5
    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/df;->finishPurchase()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not forward finishPurchase to InAppPurchaseResult"

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5
.end method

.method public getProductId()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/df;->getProductId()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const-string v1, "Could not forward getProductId to InAppPurchaseResult"

    #@a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/df;->getPurchaseData()Landroid/content/Intent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const-string v1, "Could not forward getPurchaseData to InAppPurchaseResult"

    #@a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method

.method public getResultCode()I
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/df;->getResultCode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const-string v1, "Could not forward getPurchaseData to InAppPurchaseResult"

    #@a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method

.method public isVerified()Z
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dj;->pw:Lcom/google/android/gms/internal/df;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/df;->isVerified()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result v0

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const-string v1, "Could not forward isVerified to InAppPurchaseResult"

    #@a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method
