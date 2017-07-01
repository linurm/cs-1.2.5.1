.class public Lcom/apportable/iap/BillingService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/iap/BillingService$BillingRequest;,
        Lcom/apportable/iap/BillingService$CheckBillingSupported;,
        Lcom/apportable/iap/BillingService$ConfirmNotifications;,
        Lcom/apportable/iap/BillingService$GetPurchaseInformation;,
        Lcom/apportable/iap/BillingService$RequestPurchase;,
        Lcom/apportable/iap/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/apportable/iap/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/apportable/iap/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    sput-object v0, Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    #@7
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Lcom/apportable/iap/BillingService;->mSentRequests:Ljava/util/HashMap;

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/iap/BillingService;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/iap/BillingService;->bindToMarketBillingService()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .registers 1

    #@0
    sput-object p0, Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    #@2
    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/BillingService;->mSentRequests:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    :try_start_1
    const-string v1, "BillingService"

    #@3
    const-string v2, "binding to Market billing service"

    #@5
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    new-instance v1, Landroid/content/Intent;

    #@a
    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    #@c
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {p0, v1, p0, v2}, Lcom/apportable/iap/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_17

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const-string v0, "BillingService"

    #@19
    const-string v1, "Could not bind to service."

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1e} :catch_20

    #@1e
    :goto_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_16

    #@20
    :catch_20
    move-exception v0

    #@21
    const-string v1, "BillingService"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v3, "Security exception: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_1e
.end method

.method private checkResponseCode(JLcom/apportable/iap/Consts$ResponseCode;)V
    .registers 9

    #@0
    sget-object v0, Lcom/apportable/iap/BillingService;->mSentRequests:Ljava/util/HashMap;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/apportable/iap/BillingService$BillingRequest;

    #@c
    if-eqz v0, :cond_45

    #@e
    const-string v1, "BillingService"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "checkResponseCode: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string v3, ": "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    invoke-virtual {v0, p3}, Lcom/apportable/iap/BillingService$BillingRequest;->responseCodeReceived(Lcom/apportable/iap/Consts$ResponseCode;)V

    #@3b
    :goto_3b
    sget-object v0, Lcom/apportable/iap/BillingService;->mSentRequests:Ljava/util/HashMap;

    #@3d
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    return-void

    #@45
    :cond_45
    const-string v0, "BillingService"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string v2, "checkResponseCode: did not find request corresponding to requestId "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_3b
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$GetPurchaseInformation;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/iap/BillingService$GetPurchaseInformation;-><init>(Lcom/apportable/iap/BillingService;I[Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$GetPurchaseInformation;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    #@0
    invoke-static/range {p2 .. p3}, Lcom/apportable/iap/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    return-void

    #@7
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v12

    #@b
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_6

    #@11
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/apportable/iap/Security$VerifiedPurchase;

    #@17
    iget-object v1, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseState:Lcom/apportable/iap/Consts$PurchaseState;

    #@19
    iget-object v2, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    #@1d
    iget-wide v4, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseTime:J

    #@1f
    iget-object v6, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    #@21
    iget-object v7, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->signedData:Ljava/lang/String;

    #@23
    iget-object v10, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    #@25
    iget-object v11, v0, Lcom/apportable/iap/Security$VerifiedPurchase;->purchaseToken:Ljava/lang/String;

    #@27
    move-object v0, p0

    #@28
    move-object/from16 v8, p3

    #@2a
    move v9, p1

    #@2b
    invoke-static/range {v0 .. v11}, Lcom/apportable/iap/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@2e
    goto :goto_b
.end method

.method private runPendingRequests()V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    move v1, v0

    #@2
    :cond_2
    :goto_2
    sget-object v0, Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    #@4
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/apportable/iap/BillingService$BillingRequest;

    #@a
    if-eqz v0, :cond_2e

    #@c
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$BillingRequest;->runIfConnected()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_23

    #@12
    sget-object v2, Lcom/apportable/iap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    #@14
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@17
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$BillingRequest;->getStartId()I

    #@1a
    move-result v2

    #@1b
    if-ge v1, v2, :cond_2

    #@1d
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$BillingRequest;->getStartId()I

    #@20
    move-result v0

    #@21
    move v1, v0

    #@22
    goto :goto_2

    #@23
    :cond_23
    const-string v0, "BillingService"

    #@25
    const-string v1, "attempting to attach to market service..."

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    invoke-direct {p0}, Lcom/apportable/iap/BillingService;->bindToMarketBillingService()Z

    #@2d
    :cond_2d
    :goto_2d
    return-void

    #@2e
    :cond_2e
    if-ltz v1, :cond_2d

    #@30
    const-string v0, "BillingService"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string v3, "stopping service, startId: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    invoke-virtual {p0, v1}, Lcom/apportable/iap/BillingService;->stopSelf(I)V

    #@4b
    goto :goto_2d
.end method


# virtual methods
.method public checkBillingSupported()Z
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$CheckBillingSupported;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/iap/BillingService$CheckBillingSupported;-><init>(Lcom/apportable/iap/BillingService;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$CheckBillingSupported;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public confirmNotifications(I[Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$ConfirmNotifications;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/iap/BillingService$ConfirmNotifications;-><init>(Lcom/apportable/iap/BillingService;I[Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$ConfirmNotifications;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .registers 10

    #@0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string v0, "BillingService"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v3, "handleCommand: intent: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    const-string v0, "BillingService"

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string v3, "handleCommand: action: "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v3

    #@40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_73

    #@46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Ljava/lang/String;

    #@4c
    const-string v4, "BillingService"

    #@4e
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v6, "handleCommand: intent extra: "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    const-string v6, " value: "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_40

    #@73
    :cond_73
    const-string v0, "com.apportable.iap.GET_PURCHASE_INFORMATION"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_8b

    #@7b
    const/4 v0, 0x1

    #@7c
    new-array v0, v0, [Ljava/lang/String;

    #@7e
    const/4 v1, 0x0

    #@7f
    const-string v2, "notification_id"

    #@81
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    aput-object v2, v0, v1

    #@87
    invoke-direct {p0, p2, v0}, Lcom/apportable/iap/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    #@8a
    :cond_8a
    :goto_8a
    return-void

    #@8b
    :cond_8b
    const-string v0, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v0

    #@91
    if-eqz v0, :cond_a3

    #@93
    const-string v0, "inapp_signed_data"

    #@95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    const-string v1, "inapp_signature"

    #@9b
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-direct {p0, p2, v0, v1}, Lcom/apportable/iap/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    #@a2
    goto :goto_8a

    #@a3
    :cond_a3
    const-string v0, "com.android.vending.billing.RESPONSE_CODE"

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v0

    #@a9
    if-eqz v0, :cond_8a

    #@ab
    const-string v0, "request_id"

    #@ad
    const-wide/16 v2, -0x1

    #@af
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@b2
    move-result-wide v0

    #@b3
    const-string v2, "response_code"

    #@b5
    sget-object v3, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@b7
    invoke-virtual {v3}, Lcom/apportable/iap/Consts$ResponseCode;->ordinal()I

    #@ba
    move-result v3

    #@bb
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@be
    move-result v2

    #@bf
    invoke-static {v2}, Lcom/apportable/iap/Consts$ResponseCode;->valueOf(I)Lcom/apportable/iap/Consts$ResponseCode;

    #@c2
    move-result-object v2

    #@c3
    invoke-direct {p0, v0, v1, v2}, Lcom/apportable/iap/BillingService;->checkResponseCode(JLcom/apportable/iap/Consts$ResponseCode;)V

    #@c6
    goto :goto_8a
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    #@0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@3
    invoke-virtual {p0, p0}, Lcom/apportable/iap/BillingService;->unbindService(Landroid/content/ServiceConnection;)V

    #@6
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    #@0
    const-string v0, "BillingService"

    #@2
    const-string v1, "onServiceConnected: billing service connected"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    #@d
    invoke-direct {p0}, Lcom/apportable/iap/BillingService;->runPendingRequests()V

    #@10
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    const-string v0, "BillingService"

    #@2
    const-string v1, "Billing service disconnected"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    const/4 v0, 0x0

    #@8
    sput-object v0, Lcom/apportable/iap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    #@a
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    const-string v0, "BillingService"

    #@4
    const-string v1, "BillingService onStart(): restarted with null Intent"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/apportable/iap/BillingService;->handleCommand(Landroid/content/Intent;I)V

    #@d
    goto :goto_9
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$RequestPurchase;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/iap/BillingService$RequestPurchase;-><init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$RequestPurchase;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$RequestPurchase;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/apportable/iap/BillingService$RequestPurchase;-><init>(Lcom/apportable/iap/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$RequestPurchase;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public restoreTransactions()Z
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService$RestoreTransactions;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/iap/BillingService$RestoreTransactions;-><init>(Lcom/apportable/iap/BillingService;)V

    #@5
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService$RestoreTransactions;->runRequest()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Lcom/apportable/iap/BillingService;->attachBaseContext(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public unbind()V
    .registers 2

    #@0
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/apportable/iap/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    :goto_3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    goto :goto_3
.end method
