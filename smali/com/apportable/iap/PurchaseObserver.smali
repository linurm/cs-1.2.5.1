.class public abstract Lcom/apportable/iap/PurchaseObserver;
.super Ljava/lang/Object;


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "PurchaseObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const/4 v1, 0x0

    #@4
    const-class v2, Landroid/content/IntentSender;

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-class v2, Landroid/content/Intent;

    #@b
    aput-object v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@10
    aput-object v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x4

    #@18
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1a
    aput-object v2, v0, v1

    #@1c
    sput-object v0, Lcom/apportable/iap/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    #@1e
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x5

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    iput-object v0, p0, Lcom/apportable/iap/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    #@8
    iput-object p1, p0, Lcom/apportable/iap/PurchaseObserver;->mActivity:Landroid/app/Activity;

    #@a
    return-void
.end method


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/apportable/iap/BillingService$RequestPurchase;Lcom/apportable/iap/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/apportable/iap/BillingService$RestoreTransactions;Lcom/apportable/iap/Consts$ResponseCode;)V
.end method

.method startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 9

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/iap/PurchaseObserver;->mActivity:Landroid/app/Activity;

    #@2
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@5
    move-result-object v1

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    const/4 v5, 0x0

    #@9
    move-object v2, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    #@d
    :goto_d
    return-void

    #@e
    :catch_e
    move-exception v0

    #@f
    const-string v1, "PurchaseObserver"

    #@11
    const-string v2, "error starting activity"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_d
.end method
