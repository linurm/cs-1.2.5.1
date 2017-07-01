.class public Lcom/apportable/iap/BillingReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method private checkResponseCode(Landroid/content/Context;JI)V
    .registers 7

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-class v1, Lcom/apportable/iap/BillingService;

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@c
    const-string v1, "request_id"

    #@e
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@11
    const-string v1, "response_code"

    #@13
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@19
    return-void
.end method

.method private notify(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.apportable.iap.GET_PURCHASE_INFORMATION"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-class v1, Lcom/apportable/iap/BillingService;

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@c
    const-string v1, "notification_id"

    #@e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@14
    return-void
.end method

.method private purchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    #@4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7
    const-class v1, Lcom/apportable/iap/BillingService;

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@c
    const-string v1, "inapp_signed_data"

    #@e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    const-string v1, "inapp_signature"

    #@13
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1c

    #@c
    const-string v0, "inapp_signed_data"

    #@e
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const-string v1, "inapp_signature"

    #@14
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, p1, v0, v1}, Lcom/apportable/iap/BillingReceiver;->purchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    const-string v1, "com.android.vending.billing.IN_APP_NOTIFY"

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_46

    #@24
    const-string v0, "notification_id"

    #@26
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    const-string v1, "BillingReceiver"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string v3, "notifyId: "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    invoke-direct {p0, p1, v0}, Lcom/apportable/iap/BillingReceiver;->notify(Landroid/content/Context;Ljava/lang/String;)V

    #@45
    goto :goto_1b

    #@46
    :cond_46
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_66

    #@4e
    const-string v0, "request_id"

    #@50
    const-wide/16 v2, -0x1

    #@52
    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@55
    move-result-wide v0

    #@56
    const-string v2, "response_code"

    #@58
    sget-object v3, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@5a
    invoke-virtual {v3}, Lcom/apportable/iap/Consts$ResponseCode;->ordinal()I

    #@5d
    move-result v3

    #@5e
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@61
    move-result v2

    #@62
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/apportable/iap/BillingReceiver;->checkResponseCode(Landroid/content/Context;JI)V

    #@65
    goto :goto_1b

    #@66
    :cond_66
    const-string v1, "BillingReceiver"

    #@68
    new-instance v2, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string v3, "unexpected action: "

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    goto :goto_1b
.end method
