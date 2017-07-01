.class Lcom/google/android/gms/internal/ca$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ca;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nW:Lcom/google/android/gms/internal/ca;

.field final synthetic nX:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ca;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ca$5;->nW:Lcom/google/android/gms/internal/ca;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/ca$5;->nX:Lcom/google/ads/AdRequest$ErrorCode;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ca$5;->nW:Lcom/google/android/gms/internal/ca;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/ca;)Lcom/google/android/gms/internal/bv;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/ca$5;->nX:Lcom/google/ads/AdRequest$ErrorCode;

    #@8
    invoke-static {v1}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    #@b
    move-result v1

    #@c
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bv;->onAdFailedToLoad(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v1, "Could not call onAdFailedToLoad."

    #@13
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    goto :goto_f
.end method
