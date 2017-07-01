.class Lcom/apportable/iab/IabHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iab/IabHelper;->startSetup(Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iab/IabHelper;

.field final synthetic val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/apportable/iab/IabHelper;Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@2
    iput-object p2, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@3
    const-string v1, "Billing service connected."

    #@5
    invoke-virtual {v0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@8
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@a
    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@10
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@12
    iget-object v0, v0, Lcom/apportable/iab/IabHelper;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    :try_start_18
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@1a
    const-string v2, "Checking for in-app billing 3 support."

    #@1c
    invoke-virtual {v1, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@1f
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@21
    iget-object v1, v1, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@23
    const/4 v2, 0x3

    #@24
    const-string v3, "inapp"

    #@26
    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_42

    #@2c
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@2e
    if-eqz v0, :cond_3c

    #@30
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@32
    new-instance v2, Lcom/apportable/iab/IabResult;

    #@34
    const-string v3, "Error checking for billing v3 support."

    #@36
    invoke-direct {v2, v1, v3}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@39
    invoke-interface {v0, v2}, Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/apportable/iab/IabResult;)V

    #@3c
    :cond_3c
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@3e
    const/4 v1, 0x0

    #@3f
    iput-boolean v1, v0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@41
    :cond_41
    :goto_41
    return-void

    #@42
    :cond_42
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string v3, "In-app billing version 3 supported for "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@5a
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@5c
    iget-object v1, v1, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@5e
    const/4 v2, 0x3

    #@5f
    const-string v3, "subs"

    #@61
    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_89

    #@67
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@69
    const-string v1, "Subscriptions AVAILABLE."

    #@6b
    invoke-virtual {v0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@6e
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@70
    const/4 v1, 0x1

    #@71
    iput-boolean v1, v0, Lcom/apportable/iab/IabHelper;->mSubscriptionsSupported:Z

    #@73
    :goto_73
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@75
    const/4 v1, 0x1

    #@76
    iput-boolean v1, v0, Lcom/apportable/iab/IabHelper;->mSetupDone:Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_78} :catch_a2

    #@78
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@7a
    if-eqz v0, :cond_41

    #@7c
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@7e
    new-instance v1, Lcom/apportable/iab/IabResult;

    #@80
    const-string v2, "Setup successful."

    #@82
    invoke-direct {v1, v4, v2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@85
    invoke-interface {v0, v1}, Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/apportable/iab/IabResult;)V

    #@88
    goto :goto_41

    #@89
    :cond_89
    :try_start_89
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v1, v0}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_a1} :catch_a2

    #@a1
    goto :goto_73

    #@a2
    :catch_a2
    move-exception v0

    #@a3
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@a5
    if-eqz v1, :cond_b5

    #@a7
    iget-object v1, p0, Lcom/apportable/iab/IabHelper$1;->val$listener:Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;

    #@a9
    new-instance v2, Lcom/apportable/iab/IabResult;

    #@ab
    const/16 v3, -0x3e9

    #@ad
    const-string v4, "RemoteException while setting up in-app billing."

    #@af
    invoke-direct {v2, v3, v4}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@b2
    invoke-interface {v1, v2}, Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/apportable/iab/IabResult;)V

    #@b5
    :cond_b5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@b8
    goto :goto_41
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@2
    const-string v1, "Billing service disconnected."

    #@4
    invoke-virtual {v0, v1}, Lcom/apportable/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    #@7
    iget-object v0, p0, Lcom/apportable/iab/IabHelper$1;->this$0:Lcom/apportable/iab/IabHelper;

    #@9
    const/4 v1, 0x0

    #@a
    iput-object v1, v0, Lcom/apportable/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    #@c
    return-void
.end method
