.class public Lcom/apportable/iap/BillingService$CheckBillingSupported;
.super Lcom/apportable/iap/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$CheckBillingSupported;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    const/4 v0, -0x1

    #@3
    invoke-direct {p0, p1, v0}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@6
    return-void
.end method


# virtual methods
.method protected run()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const-string v0, "CHECK_BILLING_SUPPORTED"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    const-string v1, "RESPONSE_CODE"

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    const-string v1, "BillingService"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v3, "CheckBillingSupported response code: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-static {v0}, Lcom/apportable/iap/Consts$ResponseCode;->valueOf(I)Lcom/apportable/iap/Consts$ResponseCode;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_OK:Lcom/apportable/iap/Consts$ResponseCode;

    #@32
    invoke-virtual {v1}, Lcom/apportable/iap/Consts$ResponseCode;->ordinal()I

    #@35
    move-result v1

    #@36
    if-ne v0, v1, :cond_3f

    #@38
    const/4 v0, 0x1

    #@39
    :goto_39
    invoke-static {v0}, Lcom/apportable/iap/ResponseHandler;->checkBillingSupportedResponse(Z)V

    #@3c
    sget-wide v0, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@3e
    return-wide v0

    #@3f
    :cond_3f
    const/4 v0, 0x0

    #@40
    goto :goto_39
.end method
