.class public Lcom/apportable/iap/BillingService$RestoreTransactions;
.super Lcom/apportable/iap/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$RestoreTransactions;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    const/4 v0, -0x1

    #@3
    invoke-direct {p0, p1, v0}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@6
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/apportable/iap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    #@3
    iget-wide v0, p0, Lcom/apportable/iap/BillingService$RestoreTransactions;->mNonce:J

    #@5
    invoke-static {v0, v1}, Lcom/apportable/iap/Security;->removeNonce(J)V

    #@8
    return-void
.end method

.method protected responseCodeReceived(Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/iap/BillingService$RestoreTransactions;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    invoke-static {v0, p0, p1}, Lcom/apportable/iap/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/apportable/iap/BillingService$RestoreTransactions;Lcom/apportable/iap/Consts$ResponseCode;)V

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
    invoke-static {}, Lcom/apportable/iap/Security;->generateNonce()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/apportable/iap/BillingService$RestoreTransactions;->mNonce:J

    #@6
    const-string v0, "RESTORE_TRANSACTIONS"

    #@8
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    const-string v1, "NONCE"

    #@e
    iget-wide v2, p0, Lcom/apportable/iap/BillingService$RestoreTransactions;->mNonce:J

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@13
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, "restoreTransactions"

    #@1d
    invoke-virtual {p0, v1, v0}, Lcom/apportable/iap/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    #@20
    const-string v1, "REQUEST_ID"

    #@22
    sget-wide v2, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@27
    move-result-wide v0

    #@28
    return-wide v0
.end method
