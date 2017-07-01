.class public Lcom/apportable/iap/ResponseHandler;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string v0, "ResponseHandler"

    #@6
    const-string v1, "UI is not running"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@e
    invoke-virtual {v0, p0, p1}, Lcom/apportable/iap/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    #@11
    goto :goto_b
.end method

.method public static checkBillingSupportedResponse(Z)V
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    if-eqz v0, :cond_9

    #@4
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@6
    invoke-virtual {v0, p0}, Lcom/apportable/iap/PurchaseObserver;->onBillingSupported(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 26

    #@0
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    if-eqz v0, :cond_1d

    #@4
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@6
    const/4 v3, 0x1

    #@7
    move-object v1, p1

    #@8
    move-object/from16 v2, p2

    #@a
    move-wide/from16 v4, p4

    #@c
    move-object/from16 v6, p6

    #@e
    move-object/from16 v7, p3

    #@10
    move-object/from16 v8, p7

    #@12
    move-object/from16 v9, p8

    #@14
    move/from16 v10, p9

    #@16
    move-object/from16 v11, p10

    #@18
    move-object/from16 v12, p11

    #@1a
    invoke-virtual/range {v0 .. v12}, Lcom/apportable/iap/PurchaseObserver;->onPurchaseStateChange(Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@1d
    :cond_1d
    return-void
.end method

.method public static register(Lcom/apportable/iap/PurchaseObserver;)V
    .registers 3

    #@0
    const-class v0, Lcom/apportable/iap/ResponseHandler;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sput-object p0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v0, Lcom/apportable/iap/ResponseHandler;

    #@7
    monitor-exit v0

    #@8
    return-void

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/apportable/iap/ResponseHandler;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/apportable/iap/BillingService$RequestPurchase;Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    if-eqz v0, :cond_9

    #@4
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/apportable/iap/PurchaseObserver;->onRequestPurchaseResponse(Lcom/apportable/iap/BillingService$RequestPurchase;Lcom/apportable/iap/Consts$ResponseCode;)V

    #@9
    :cond_9
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/apportable/iap/BillingService$RestoreTransactions;Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    if-eqz v0, :cond_9

    #@4
    sget-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/apportable/iap/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/apportable/iap/BillingService$RestoreTransactions;Lcom/apportable/iap/Consts$ResponseCode;)V

    #@9
    :cond_9
    return-void
.end method

.method public static unregister(Lcom/apportable/iap/PurchaseObserver;)V
    .registers 3

    #@0
    const-class v0, Lcom/apportable/iap/ResponseHandler;

    #@2
    monitor-enter v0

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    sput-object v0, Lcom/apportable/iap/ResponseHandler;->sPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a

    #@6
    const-class v0, Lcom/apportable/iap/ResponseHandler;

    #@8
    monitor-exit v0

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    const-class v1, Lcom/apportable/iap/ResponseHandler;

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method
