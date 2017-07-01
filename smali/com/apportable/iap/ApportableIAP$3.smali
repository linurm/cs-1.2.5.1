.class Lcom/apportable/iap/ApportableIAP$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iap/ApportableIAP;->querySkus(JLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iap/ApportableIAP;

.field final synthetic val$productRequest:J


# direct methods
.method constructor <init>(Lcom/apportable/iap/ApportableIAP;J)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/iap/ApportableIAP$3;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@2
    iput-wide p2, p0, Lcom/apportable/iap/ApportableIAP$3;->val$productRequest:J

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V
    .registers 9

    #@0
    const/4 v5, 0x1

    #@1
    invoke-virtual {p1}, Lcom/apportable/iab/IabResult;->isFailure()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1e

    #@7
    const-string v0, "ApportableIAP"

    #@9
    const-string v1, "OOPS, unable to query product SKUs."

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    iget-object v0, p0, Lcom/apportable/iap/ApportableIAP$3;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@10
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v0}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@13
    move-result-wide v0

    #@14
    iget-wide v2, p0, Lcom/apportable/iap/ApportableIAP$3;->val$productRequest:J

    #@16
    invoke-virtual {p1}, Lcom/apportable/iab/IabResult;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-static/range {v0 .. v5}, Lcom/apportable/iap/ApportableIAP;->querySkusResponse(JJLjava/lang/String;Z)V

    #@1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    const-string v0, "ApportableIAP"

    #@20
    const-string v1, "Query SKUs was successful."

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    invoke-virtual {p2}, Lcom/apportable/iab/Inventory;->getAllSkus()Ljava/util/List;

    #@28
    move-result-object v0

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const/16 v1, 0x5b

    #@30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_56

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/apportable/iab/SkuDetails;

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@46
    move-result v2

    #@47
    if-le v2, v5, :cond_4e

    #@49
    const/16 v2, 0x2c

    #@4b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    :cond_4e
    invoke-virtual {v0}, Lcom/apportable/iab/SkuDetails;->toJSONString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    goto :goto_37

    #@56
    :cond_56
    const/16 v0, 0x5d

    #@58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    iget-object v0, p0, Lcom/apportable/iap/ApportableIAP$3;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@5d
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v0}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@60
    move-result-wide v0

    #@61
    iget-wide v2, p0, Lcom/apportable/iap/ApportableIAP$3;->val$productRequest:J

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    const/4 v5, 0x0

    #@68
    invoke-static/range {v0 .. v5}, Lcom/apportable/iap/ApportableIAP;->querySkusResponse(JJLjava/lang/String;Z)V

    #@6b
    goto :goto_1d
.end method
