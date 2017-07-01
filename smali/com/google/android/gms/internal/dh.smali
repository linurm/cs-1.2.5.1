.class public final Lcom/google/android/gms/internal/dh;
.super Lcom/google/android/gms/internal/dc$a;


# instance fields
.field private final mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/dc$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/dh;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/db;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->mB:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/dk;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/dk;-><init>(Lcom/google/android/gms/internal/db;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    #@a
    return-void
.end method
