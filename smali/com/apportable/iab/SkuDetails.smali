.class public Lcom/apportable/iab/SkuDetails;
.super Ljava/lang/Object;


# instance fields
.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const-string v0, "inapp"

    #@2
    invoke-direct {p0, v0, p1}, Lcom/apportable/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/iab/SkuDetails;->mItemType:Ljava/lang/String;

    #@5
    new-instance v0, Lorg/json/JSONObject;

    #@7
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@a
    const-string v1, "title"

    #@c
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0, v1}, Lcom/apportable/iab/SkuDetails;->parseTitle(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string v2, "title"

    #@16
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/apportable/iab/SkuDetails;->mJson:Ljava/lang/String;

    #@1f
    const-string v2, "productId"

    #@21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Lcom/apportable/iab/SkuDetails;->mSku:Ljava/lang/String;

    #@27
    const-string v2, "type"

    #@29
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/apportable/iab/SkuDetails;->mType:Ljava/lang/String;

    #@2f
    const-string v2, "price"

    #@31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Lcom/apportable/iab/SkuDetails;->mPrice:Ljava/lang/String;

    #@37
    iput-object v1, p0, Lcom/apportable/iab/SkuDetails;->mTitle:Ljava/lang/String;

    #@39
    const-string v1, "description"

    #@3b
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Lcom/apportable/iab/SkuDetails;->mDescription:Ljava/lang/String;

    #@41
    return-void
.end method

.method private parseTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, " \\(.*\\)$"

    #@2
    const-string v1, ""

    #@4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mPrice:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mSku:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/SkuDetails;->mJson:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "SkuDetails:"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/apportable/iab/SkuDetails;->mJson:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
