.class public Lcom/apportable/iab/Purchase;
.super Ljava/lang/Object;


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/iab/Purchase;->mItemType:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/apportable/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    #@7
    new-instance v0, Lorg/json/JSONObject;

    #@9
    iget-object v1, p0, Lcom/apportable/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    #@b
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@e
    const-string v1, "orderId"

    #@10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/apportable/iab/Purchase;->mOrderId:Ljava/lang/String;

    #@16
    const-string v1, "packageName"

    #@18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Lcom/apportable/iab/Purchase;->mPackageName:Ljava/lang/String;

    #@1e
    const-string v1, "productId"

    #@20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/apportable/iab/Purchase;->mSku:Ljava/lang/String;

    #@26
    const-string v1, "purchaseTime"

    #@28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    #@2b
    move-result-wide v2

    #@2c
    iput-wide v2, p0, Lcom/apportable/iab/Purchase;->mPurchaseTime:J

    #@2e
    const-string v1, "purchaseState"

    #@30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    #@33
    move-result v1

    #@34
    iput v1, p0, Lcom/apportable/iab/Purchase;->mPurchaseState:I

    #@36
    const-string v1, "developerPayload"

    #@38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/apportable/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    #@3e
    const-string v1, "token"

    #@40
    const-string v2, "purchaseToken"

    #@42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/apportable/iab/Purchase;->mToken:Ljava/lang/String;

    #@4c
    iput-object p3, p0, Lcom/apportable/iab/Purchase;->mSignature:Ljava/lang/String;

    #@4e
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mItemType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mOrderId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPurchaseState()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/iab/Purchase;->mPurchaseState:I

    #@2
    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/iab/Purchase;->mPurchaseTime:J

    #@2
    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mSignature:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mSku:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Purchase;->mToken:Ljava/lang/String;

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
    const-string v1, "PurchaseInfo(type:"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/apportable/iab/Purchase;->mItemType:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "):"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/apportable/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
