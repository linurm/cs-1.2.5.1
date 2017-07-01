.class public Lcom/facebook/ads/NativeAd$Image;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field private final height:I

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$Image;->url:Ljava/lang/String;

    #@5
    iput p2, p0, Lcom/facebook/ads/NativeAd$Image;->width:I

    #@7
    iput p3, p0, Lcom/facebook/ads/NativeAd$Image;->height:I

    #@9
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    if-nez p0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-object v0

    #@5
    :cond_5
    const-string v1, "url"

    #@7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_4

    #@d
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    #@f
    const-string v2, "width"

    #@11
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@14
    move-result v2

    #@15
    const-string v3, "height"

    #@17
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@1a
    move-result v3

    #@1b
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$Image;-><init>(Ljava/lang/String;II)V

    #@1e
    goto :goto_4
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/NativeAd$Image;->height:I

    #@2
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->url:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/NativeAd$Image;->width:I

    #@2
    return v0
.end method
