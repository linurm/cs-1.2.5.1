.class public interface abstract Lcom/facebook/ads/internal/AdRequest$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/facebook/ads/internal/AdResponse;)V
.end method

.method public abstract onError(Lcom/facebook/ads/AdError;)V
.end method
