.class public Lcom/facebook/ads/NativeAd$Rating;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rating"
.end annotation


# instance fields
.field private final scale:D

.field private final value:D


# direct methods
.method private constructor <init>(DD)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/facebook/ads/NativeAd$Rating;->value:D

    #@5
    iput-wide p3, p0, Lcom/facebook/ads/NativeAd$Rating;->scale:D

    #@7
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;
    .registers 9

    #@0
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p0, :cond_6

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    const-string v1, "value"

    #@8
    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    #@b
    move-result-wide v2

    #@c
    const-string v1, "scale"

    #@e
    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    #@11
    move-result-wide v4

    #@12
    cmpl-double v1, v2, v6

    #@14
    if-eqz v1, :cond_5

    #@16
    cmpl-double v1, v4, v6

    #@18
    if-eqz v1, :cond_5

    #@1a
    new-instance v0, Lcom/facebook/ads/NativeAd$Rating;

    #@1c
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/ads/NativeAd$Rating;-><init>(DD)V

    #@1f
    goto :goto_5
.end method


# virtual methods
.method public getScale()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->scale:D

    #@2
    return-wide v0
.end method

.method public getValue()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->value:D

    #@2
    return-wide v0
.end method
