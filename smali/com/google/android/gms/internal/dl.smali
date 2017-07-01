.class public final Lcom/google/android/gms/internal/dl;
.super Lcom/google/android/gms/internal/dg$a;


# instance fields
.field private final mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/dg$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dl;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/df;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/dj;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/dj;-><init>(Lcom/google/android/gms/internal/df;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->onInAppPurchaseFinished(Lcom/google/android/gms/ads/purchase/InAppPurchaseResult;)V

    #@a
    return-void
.end method

.method public isValidPurchase(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->mC:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;->isValidPurchase(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
