.class public Lcom/apportable/iap/BillingService$RequestPurchase;
.super Lcom/apportable/iap/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field public final mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/iap/BillingService$RequestPurchase;-><init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    return-void
.end method

.method public constructor <init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    const/4 v0, -0x1

    #@3
    invoke-direct {p0, p1, v0}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@6
    iput-object p2, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    #@b
    iput-object p3, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@d
    return-void
.end method

.method public constructor <init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    const/4 v0, -0x1

    #@3
    invoke-direct {p0, p1, v0}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@6
    iput-object p2, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #@8
    iput-object p3, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    #@a
    iput-object p4, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@c
    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    invoke-static {v0, p0, p1}, Lcom/apportable/iap/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/apportable/iap/BillingService$RequestPurchase;Lcom/apportable/iap/Consts$ResponseCode;)V

    #@5
    return-void
.end method

.method protected run()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const-string v0, "REQUEST_PURCHASE"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    const-string v1, "ITEM_ID"

    #@8
    iget-object v2, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    iget-object v1, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    #@13
    if-eqz v1, :cond_1c

    #@15
    const-string v1, "ITEM_TYPE"

    #@17
    iget-object v2, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductType:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    :cond_1c
    iget-object v1, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_27

    #@20
    const-string v1, "DEVELOPER_PAYLOAD"

    #@22
    iget-object v2, p0, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    :cond_27
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@2e
    move-result-object v1

    #@2f
    const-string v0, "PURCHASE_INTENT"

    #@31
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/app/PendingIntent;

    #@37
    if-nez v0, :cond_43

    #@39
    const-string v0, "BillingService"

    #@3b
    const-string v1, "Error with requestPurchase"

    #@3d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    sget-wide v0, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@42
    :goto_42
    return-wide v0

    #@43
    :cond_43
    new-instance v2, Landroid/content/Intent;

    #@45
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@48
    invoke-static {v0, v2}, Lcom/apportable/iap/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    #@4b
    const-string v0, "REQUEST_ID"

    #@4d
    sget-wide v2, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@4f
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@52
    move-result-wide v0

    #@53
    goto :goto_42
.end method
