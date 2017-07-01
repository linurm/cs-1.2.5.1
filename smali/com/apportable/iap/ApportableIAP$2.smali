.class Lcom/apportable/iap/ApportableIAP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/ApportableIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iap/ApportableIAP;


# direct methods
.method constructor <init>(Lcom/apportable/iap/ApportableIAP;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/iap/ApportableIAP$2;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Inventory;)V
    .registers 22

    #@0
    invoke-virtual/range {p1 .. p1}, Lcom/apportable/iab/IabResult;->isFailure()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1d

    #@6
    const-string v2, "ApportableIAP"

    #@8
    const-string v3, "OOPS, unable to restore purchases."

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$2;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@11
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@14
    move-result-wide v2

    #@15
    invoke-virtual/range {p1 .. p1}, Lcom/apportable/iab/IabResult;->getMessage()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v2, v3, v4}, Lcom/apportable/iap/ApportableIAP;->restorePurchasesDidError(JLjava/lang/String;)V

    #@1c
    :goto_1c
    return-void

    #@1d
    :cond_1d
    const-string v2, "ApportableIAP"

    #@1f
    const-string v3, "Restore purchases was successful."

    #@21
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Inventory;->getAllPurchases()Ljava/util/List;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v18

    #@2c
    :goto_2c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_77

    #@32
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    move-object v15, v2

    #@37
    check-cast v15, Lcom/apportable/iab/Purchase;

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$2;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@3d
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@40
    move-result-wide v2

    #@41
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getDeveloperPayload()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getPurchaseState()I

    #@48
    move-result v5

    #@49
    invoke-static {v5}, Lcom/apportable/iap/Consts$PurchaseState;->valueOf(I)Lcom/apportable/iap/Consts$PurchaseState;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    const/4 v7, 0x1

    #@56
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getPurchaseTime()J

    #@59
    move-result-wide v8

    #@5a
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getOrderId()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getOriginalJson()Ljava/lang/String;

    #@61
    move-result-object v11

    #@62
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getSignature()Ljava/lang/String;

    #@65
    move-result-object v12

    #@66
    const/4 v13, -0x1

    #@67
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@6a
    move-result-object v14

    #@6b
    invoke-virtual {v15}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@6e
    move-result-object v15

    #@6f
    const/16 v16, 0x1

    #@71
    const/16 v17, 0x1

    #@73
    invoke-static/range {v2 .. v17}, Lcom/apportable/iap/ApportableIAP;->purchaseStateDidChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    #@76
    goto :goto_2c

    #@77
    :cond_77
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$2;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@7b
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@7e
    move-result-wide v2

    #@7f
    invoke-static {v2, v3}, Lcom/apportable/iap/ApportableIAP;->restorePurchasesCompleted(J)V

    #@82
    goto :goto_1c
.end method
