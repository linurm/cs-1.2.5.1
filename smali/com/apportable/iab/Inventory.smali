.class public Lcom/apportable/iab/Inventory;
.super Ljava/lang/Object;


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/iab/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field mSkuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/iab/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/iab/Inventory;->mSkuMap:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@11
    return-void
.end method


# virtual methods
.method addPurchase(Lcom/apportable/iab/Purchase;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method addSkuDetails(Lcom/apportable/iab/SkuDetails;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mSkuMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Lcom/apportable/iab/SkuDetails;->getSku()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    :cond_d
    return-void
.end method

.method public getAllOwnedSkus()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method public getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2d

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/apportable/iab/Purchase;

    #@1b
    invoke-virtual {v0}, Lcom/apportable/iab/Purchase;->getItemType()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_f

    #@25
    invoke-virtual {v0}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_f

    #@2d
    :cond_2d
    return-object v1
.end method

.method public getAllPurchases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/Purchase;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method public getAllSkus()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/iab/SkuDetails;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/apportable/iab/Inventory;->mSkuMap:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/apportable/iab/Purchase;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/apportable/iab/Purchase;

    #@8
    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/apportable/iab/SkuDetails;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mSkuMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/apportable/iab/SkuDetails;

    #@8
    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mSkuMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iab/Inventory;->mPurchaseMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
