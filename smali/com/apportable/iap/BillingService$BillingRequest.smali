.class public abstract Lcom/apportable/iap/BillingService$BillingRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/apportable/iap/BillingService;


# direct methods
.method public constructor <init>(Lcom/apportable/iap/BillingService;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/iap/BillingService$BillingRequest;->this$0:Lcom/apportable/iap/BillingService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput p2, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mStartId:I

    #@7
    return-void
.end method


# virtual methods
.method public getStartId()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mStartId:I

    #@2
    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    #@0
    const-string v0, "RESPONSE_CODE"

    #@2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Lcom/apportable/iap/Consts$ResponseCode;->valueOf(I)Lcom/apportable/iap/Consts$ResponseCode;

    #@9
    move-result-object v0

    #@a
    const-string v1, "BillingService"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string v3, " received "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0}, Lcom/apportable/iap/Consts$ResponseCode;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "BILLING_REQUEST"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    const-string v1, "API_VERSION"

    #@c
    const/4 v2, 0x2

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    const-string v1, "PACKAGE_NAME"

    #@12
    iget-object v2, p0, Lcom/apportable/iap/BillingService$BillingRequest;->this$0:Lcom/apportable/iap/BillingService;

    #@14
    invoke-virtual {v2}, Lcom/apportable/iap/BillingService;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .registers 4

    #@0
    const-string v0, "BillingService"

    #@2
    const-string v1, "remote billing service crashed"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    const/4 v0, 0x0

    #@8
    # setter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {v0}, Lcom/apportable/iap/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    #@b
    return-void
.end method

.method protected responseCodeReceived(Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 2

    #@0
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .registers 5

    #@0
    const-string v0, "BillingService"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "runIfConnected: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    # getter for: Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_61

    #@26
    :try_start_26
    invoke-virtual {p0}, Lcom/apportable/iap/BillingService$BillingRequest;->run()J

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mRequestId:J

    #@2c
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string v1, "BillingService"

    #@33
    const-string v2, "runIfConnected: request id: "

    #@35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    iget-wide v2, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mRequestId:J

    #@3b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    iget-wide v0, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mRequestId:J

    #@48
    const-wide/16 v2, 0x0

    #@4a
    cmp-long v0, v0, v2

    #@4c
    if-ltz v0, :cond_5b

    #@4e
    # getter for: Lcom/apportable/iap/BillingService;->mSentRequests:Ljava/util/HashMap;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$300()Ljava/util/HashMap;

    #@51
    move-result-object v0

    #@52
    iget-wide v2, p0, Lcom/apportable/iap/BillingService$BillingRequest;->mRequestId:J

    #@54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_5b} :catch_5d

    #@5b
    :cond_5b
    const/4 v0, 0x1

    #@5c
    :goto_5c
    return v0

    #@5d
    :catch_5d
    move-exception v0

    #@5e
    invoke-virtual {p0, v0}, Lcom/apportable/iap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    #@61
    :cond_61
    const/4 v0, 0x0

    #@62
    goto :goto_5c
.end method

.method public runRequest()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0}, Lcom/apportable/iap/BillingService$BillingRequest;->runIfConnected()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return v0

    #@8
    :cond_8
    # getter for: Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$000()Ljava/util/LinkedList;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@f
    iget-object v1, p0, Lcom/apportable/iap/BillingService$BillingRequest;->this$0:Lcom/apportable/iap/BillingService;

    #@11
    # invokes: Lcom/apportable/iap/BillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lcom/apportable/iap/BillingService;->access$100(Lcom/apportable/iap/BillingService;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_7

    #@17
    # getter for: Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;
    invoke-static {}, Lcom/apportable/iap/BillingService;->access$000()Ljava/util/LinkedList;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@1e
    const/4 v0, 0x0

    #@1f
    goto :goto_7
.end method
