.class Lcom/apportable/iap/ApportableIAP$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iap/ApportableIAP$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/iap/ApportableIAP$4;


# direct methods
.method constructor <init>(Lcom/apportable/iap/ApportableIAP$4;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/apportable/iab/IabResult;Lcom/apportable/iab/Purchase;)V
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@4
    iget-object v2, v2, Lcom/apportable/iap/ApportableIAP$4;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@6
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@9
    invoke-virtual/range {p1 .. p1}, Lcom/apportable/iab/IabResult;->isFailure()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2d

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@13
    iget-object v2, v2, Lcom/apportable/iap/ApportableIAP$4;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@15
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@18
    move-result-wide v2

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@1d
    iget-object v4, v4, Lcom/apportable/iap/ApportableIAP$4;->val$requestId:Ljava/lang/String;

    #@1f
    sget-object v5, Lcom/apportable/iap/Consts$PurchaseState;->USER_CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@21
    invoke-virtual {v5}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual/range {p1 .. p1}, Lcom/apportable/iab/IabResult;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-static {v2, v3, v4, v5, v6}, Lcom/apportable/iap/ApportableIAP;->purchaseRequestDidError(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    :goto_2c
    return-void

    #@2d
    :cond_2d
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@31
    iget-object v2, v2, Lcom/apportable/iap/ApportableIAP$4;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@33
    # getter for: Lcom/apportable/iap/ApportableIAP;->mObject:J
    invoke-static {v2}, Lcom/apportable/iap/ApportableIAP;->access$200(Lcom/apportable/iap/ApportableIAP;)J

    #@36
    move-result-wide v2

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Lcom/apportable/iap/ApportableIAP$4$1;->this$1:Lcom/apportable/iap/ApportableIAP$4;

    #@3b
    iget-object v4, v4, Lcom/apportable/iap/ApportableIAP$4;->val$requestId:Ljava/lang/String;

    #@3d
    sget-object v5, Lcom/apportable/iap/Consts$PurchaseState;->PURCHASED:Lcom/apportable/iap/Consts$PurchaseState;

    #@3f
    invoke-virtual {v5}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    const/4 v7, 0x1

    #@48
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getPurchaseTime()J

    #@4b
    move-result-wide v8

    #@4c
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getOrderId()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getOriginalJson()Ljava/lang/String;

    #@53
    move-result-object v11

    #@54
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getSignature()Ljava/lang/String;

    #@57
    move-result-object v12

    #@58
    const/4 v13, 0x0

    #@59
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@5c
    move-result-object v14

    #@5d
    invoke-virtual/range {p2 .. p2}, Lcom/apportable/iab/Purchase;->getToken()Ljava/lang/String;

    #@60
    move-result-object v15

    #@61
    const/16 v16, 0x0

    #@63
    const/16 v17, 0x1

    #@65
    invoke-static/range {v2 .. v17}, Lcom/apportable/iap/ApportableIAP;->purchaseStateDidChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    #@68
    goto :goto_2c
.end method
