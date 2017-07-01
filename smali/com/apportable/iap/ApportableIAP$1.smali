.class Lcom/apportable/iap/ApportableIAP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iap/ApportableIAP;->initBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iap/ApportableIAP;


# direct methods
.method constructor <init>(Lcom/apportable/iap/ApportableIAP;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/iap/ApportableIAP$1;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/apportable/iab/IabResult;)V
    .registers 4

    #@0
    const-string v0, "ApportableIAP"

    #@2
    const-string v1, "Setup finished."

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    invoke-virtual {p1}, Lcom/apportable/iab/IabResult;->isSuccess()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_22

    #@d
    const-string v0, "ApportableIAP"

    #@f
    const-string v1, "IAPv3 not working!!!"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    const/4 v0, 0x0

    #@15
    # setter for: Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;
    invoke-static {v0}, Lcom/apportable/iap/ApportableIAP;->access$002(Lcom/apportable/iab/IabHelper;)Lcom/apportable/iab/IabHelper;

    #@18
    iget-object v0, p0, Lcom/apportable/iap/ApportableIAP$1;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@1a
    invoke-virtual {v0}, Lcom/apportable/iap/ApportableIAP;->checkBillingSupported()Z

    #@1d
    move-result v0

    #@1e
    # setter for: Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z
    invoke-static {v0}, Lcom/apportable/iap/ApportableIAP;->access$102(Z)Z

    #@21
    :goto_21
    return-void

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    # setter for: Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z
    invoke-static {v0}, Lcom/apportable/iap/ApportableIAP;->access$102(Z)Z

    #@26
    goto :goto_21
.end method
