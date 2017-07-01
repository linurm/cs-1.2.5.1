.class public Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/purchase/InAppPurchase;


# instance fields
.field private final pi:Lcom/google/android/gms/internal/db;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/db;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->pi:Lcom/google/android/gms/internal/db;

    #@5
    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pi:Lcom/google/android/gms/internal/db;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/db;->getProductId()Ljava/lang/String;
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
    const-string v1, "Could not forward getProductId to InAppPurchase"

    #@a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method

.method public recordPlayBillingResolution(I)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pi:Lcom/google/android/gms/internal/db;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/db;->recordPlayBillingResolution(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not forward recordPlayBillingResolution to InAppPurchase"

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5
.end method

.method public recordResolution(I)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->pi:Lcom/google/android/gms/internal/db;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/db;->recordResolution(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    const-string v1, "Could not forward recordResolution to InAppPurchase"

    #@9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c
    goto :goto_5
.end method
