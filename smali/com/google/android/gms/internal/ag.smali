.class public final Lcom/google/android/gms/internal/ag;
.super Lcom/google/android/gms/internal/ap$a;


# instance fields
.field private final lQ:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ap$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@5
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    #@5
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    #@5
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    #@5
    return-void
.end method

.method public onAdLoaded()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    #@5
    return-void
.end method

.method public onAdOpened()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lQ:Lcom/google/android/gms/ads/AdListener;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    #@5
    return-void
.end method
