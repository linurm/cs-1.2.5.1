.class Lcom/apportable/iap/ApportableIAP$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/iap/ApportableIAP;->purchaseObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/iap/ApportableIAP;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$productType:Ljava/lang/String;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/iap/ApportableIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/iap/ApportableIAP$4;->this$0:Lcom/apportable/iap/ApportableIAP;

    #@2
    iput-object p2, p0, Lcom/apportable/iap/ApportableIAP$4;->val$productId:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/apportable/iap/ApportableIAP$4;->val$productType:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/apportable/iap/ApportableIAP$4;->val$requestId:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    # getter for: Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;
    invoke-static {}, Lcom/apportable/iap/ApportableIAP;->access$000()Lcom/apportable/iab/IabHelper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/apportable/iap/ApportableIAP$4;->val$productId:Ljava/lang/String;

    #@a
    iget-object v3, p0, Lcom/apportable/iap/ApportableIAP$4;->val$productType:Ljava/lang/String;

    #@c
    const v4, 0x18697

    #@f
    new-instance v5, Lcom/apportable/iap/ApportableIAP$4$1;

    #@11
    invoke-direct {v5, p0}, Lcom/apportable/iap/ApportableIAP$4$1;-><init>(Lcom/apportable/iap/ApportableIAP$4;)V

    #@14
    iget-object v6, p0, Lcom/apportable/iap/ApportableIAP$4;->val$requestId:Ljava/lang/String;

    #@16
    invoke-virtual/range {v0 .. v6}, Lcom/apportable/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/apportable/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    #@19
    return-void
.end method
