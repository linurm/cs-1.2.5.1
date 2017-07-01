.class public Lcom/apportable/iap/BillingService$ConfirmNotifications;
.super Lcom/apportable/iap/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;I[Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$ConfirmNotifications;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/apportable/iap/BillingService$BillingRequest;-><init>(Lcom/apportable/iap/BillingService;I)V

    #@5
    iput-object p3, p0, Lcom/apportable/iap/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    #@7
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
    const-string v0, "CONFIRM_NOTIFICATIONS"

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    const-string v1, "NOTIFY_IDS"

    #@8
    iget-object v2, p0, Lcom/apportable/iap/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    const-string v1, "confirmNotifications"

    #@17
    invoke-virtual {p0, v1, v0}, Lcom/apportable/iap/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1a
    const-string v1, "REQUEST_ID"

    #@1c
    sget-wide v2, Lcom/apportable/iap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    #@1e
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@21
    move-result-wide v0

    #@22
    return-wide v0
.end method
