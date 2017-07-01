.class public Lcom/apportable/iap/BillingService$GetPurchaseInformation;
.super Lcom/apportable/iap/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;I[Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@5
    iput-object p3, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/apportable/iap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    #@3
    iget-wide v0, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->mNonce:J

    #@5
    invoke-static {v0, v1}, Lcom/apportable/iap/Security;->removeNonce(J)V

    #@8
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
    invoke-static {}, Lcom/apportable/iap/Security;->generateNonce()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->mNonce:J

    #@6
    const-string v0, "GET_PURCHASE_INFORMATION"

    #@8
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    const-string v1, "NONCE"

    #@e
    iget-wide v2, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->mNonce:J

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@13
    const-string v1, "NOTIFY_IDS"

    #@15
    iget-object v2, p0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@1a
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@21
    move-result-object v0

    #@22
    const-string v1, "getPurchaseInformation"

    #@24
    invoke-virtual {p0, v1, v0}, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    #@27
    const-string v1, "REQUEST_ID"

    #@29
    sget-wide v2, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@2b
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@2e
    move-result-wide v0

    #@2f
    return-wide v0
.end method
