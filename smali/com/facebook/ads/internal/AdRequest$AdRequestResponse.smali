.class Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdRequestResponse"
.end annotation


# instance fields
.field body:Lorg/json/JSONObject;

.field error:Lcom/facebook/ads/AdError;


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    #@6
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    #@8
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdRequest$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>()V

    #@3
    return-void
.end method
