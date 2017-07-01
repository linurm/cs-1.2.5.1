.class Lcom/facebook/ads/NativeAd$ClickData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickData"
.end annotation


# instance fields
.field private adPositionX:F

.field private adPositionY:F

.field private height:I

.field private initialized:Z

.field final synthetic this$0:Lcom/facebook/ads/NativeAd;

.field private visibleHeight:I

.field private visibleWidth:I

.field private width:I

.field private xCoord:I

.field private yCoord:I


# direct methods
.method private constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->this$0:Lcom/facebook/ads/NativeAd;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAd$ClickData;-><init>(Lcom/facebook/ads/NativeAd;)V

    #@3
    return-void
.end method

.method static synthetic access$1002(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->visibleHeight:I

    #@2
    return p1
.end method

.method static synthetic access$1102(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->xCoord:I

    #@2
    return p1
.end method

.method static synthetic access$1202(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->yCoord:I

    #@2
    return p1
.end method

.method static synthetic access$1302(Lcom/facebook/ads/NativeAd$ClickData;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->initialized:Z

    #@2
    return p1
.end method

.method static synthetic access$502(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->width:I

    #@2
    return p1
.end method

.method static synthetic access$602(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->height:I

    #@2
    return p1
.end method

.method static synthetic access$702(Lcom/facebook/ads/NativeAd$ClickData;F)F
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->adPositionX:F

    #@2
    return p1
.end method

.method static synthetic access$802(Lcom/facebook/ads/NativeAd$ClickData;F)F
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->adPositionY:F

    #@2
    return p1
.end method

.method static synthetic access$902(Lcom/facebook/ads/NativeAd$ClickData;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/ads/NativeAd$ClickData;->visibleWidth:I

    #@2
    return p1
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    const-string v1, "clickX"

    #@7
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->xCoord:I

    #@9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    const-string v1, "clickY"

    #@12
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->yCoord:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    const-string v1, "width"

    #@1d
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->width:I

    #@1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    const-string v1, "height"

    #@28
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->height:I

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    const-string v1, "adPositionX"

    #@33
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->adPositionX:F

    #@35
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    const-string v1, "adPositionY"

    #@3e
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->adPositionY:F

    #@40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@43
    move-result-object v2

    #@44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    const-string v1, "visibleWidth"

    #@49
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->visibleWidth:I

    #@4b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    const-string v1, "visibleHeight"

    #@54
    iget v2, p0, Lcom/facebook/ads/NativeAd$ClickData;->visibleHeight:I

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v2

    #@5a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    return-object v0
.end method

.method public initialized()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd$ClickData;->initialized:Z

    #@2
    return v0
.end method
